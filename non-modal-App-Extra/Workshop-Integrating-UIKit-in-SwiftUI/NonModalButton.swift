//
//  NonModalButton.swift
//  Workshop-Integrating-UIKit-in-SwiftUI
//
//  Created by Giovanni Monaco on 23/02/22.
//

import SwiftUI

struct NonModalButton: UIViewRepresentable {
    
    @Binding var isPresenting: Bool
    
    func makeUIView(context: Context) -> UIButton {
        
        // Create and Configure UIButton
        let button = UIButton(type: .custom)
        let imageConfiguration = UIImage.SymbolConfiguration(pointSize: 100, weight: .medium, scale: .default)
        let image = UIImage(systemName: "arrow.up.circle.fill", withConfiguration: imageConfiguration)
        button.setImage(image, for: .normal)
        button.tintColor = UIColor.label
        
        // Create and Add action 
        let action = UIAction { _ in
            isPresenting.toggle()
        }
        button.addAction(action, for: .touchUpInside)
        
        // Return Button
        return button
    }
    
    func updateUIView(_ uiView: UIButton, context: Context) {
        // Access the UIViewController that has been created in the Storyboard
        let storyboard = UIStoryboard.init(name: "Storyboard", bundle: .main)
        let presentedViewController = storyboard.instantiateViewController(withIdentifier: "vc") as! ViewController
        
        // Set the coordinator (delegate)
        // We need the delegate to use the presentationControllerDidDismiss function
        presentedViewController.presentationController?.delegate = context.coordinator
        
        let sheet = presentedViewController.presentationController as! UISheetPresentationController
        sheet.prefersGrabberVisible = true
        sheet.detents = [.medium(), .large()]
        
        if isPresenting {
            uiView.window?.rootViewController?.present(presentedViewController, animated: true)
            // adding the dissmissing func to the UIButton inside the presented ViewController
            addDismissAction(button: presentedViewController.dismissUIButton)
        } else {
            uiView.window?.rootViewController?.dismiss(animated: true, completion: nil)
        }
    }
    
    private func addDismissAction(button: UIButton) {
        let action = UIAction { _ in
            isPresenting.toggle()
            print("The presentation controller was dismissed because the user tapped on the dismiss button")
        }
        button.addAction(action, for: .touchUpInside)
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(isPresented: $isPresenting)
    }
    
    class Coordinator: NSObject, UISheetPresentationControllerDelegate {
        @Binding var isPresented: Bool
        
        init(isPresented: Binding<Bool>, onDismiss: (() -> Void)? = nil) {
            self._isPresented = isPresented
        }
        
        func presentationControllerDidDismiss(_ presentationController: UIPresentationController) {
            isPresented.toggle()
            print("The presentation controller was dismissed because the user tapped outside or dragged it down")
        }
        
        func sheetPresentationControllerDidChangeSelectedDetentIdentifier(_ sheetPresentationController: UISheetPresentationController) {
            let newDetent = sheetPresentationController.selectedDetentIdentifier?.rawValue ?? ""
            print("New detent: \(newDetent)")
        }
        
    }
    
    
    
}
