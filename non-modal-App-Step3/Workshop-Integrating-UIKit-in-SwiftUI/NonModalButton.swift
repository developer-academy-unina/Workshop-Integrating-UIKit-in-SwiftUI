//
//  NonModalButton.swift
//  Workshop-Integrating-UIKit-in-SwiftUI
//
//  Created by Giovanni Monaco on 23/02/22.
//

import SwiftUI

struct NonModalButton: UIViewRepresentable {
    
    func makeUIView(context: Context) -> UIButton {
        
        // Create and Configure UIButton
        let button = UIButton(type: .custom)
        let imageConfiguration = UIImage.SymbolConfiguration(pointSize: 100, weight: .medium, scale: .default)
        let image = UIImage(systemName: "arrow.up.circle.fill", withConfiguration: imageConfiguration)
        button.setImage(image, for: .normal)
        button.tintColor = UIColor.label
        
        // Access the UIViewController that we have created in the Storyboard
        let storyboard = UIStoryboard(name: "Storyboard", bundle: .main)
        let viewController = storyboard.instantiateViewController(withIdentifier: "vc")
        
        // Create and Add action
        let action = UIAction { _ in
            button.window?.rootViewController?.present(viewController, animated: true)
        }
        button.addAction(action, for: .touchUpInside)
        
        // Return Button
        return button
    }
    
    func updateUIView(_ uiView: UIButton, context: Context) {
        // no code needed for now
    }
    
}
