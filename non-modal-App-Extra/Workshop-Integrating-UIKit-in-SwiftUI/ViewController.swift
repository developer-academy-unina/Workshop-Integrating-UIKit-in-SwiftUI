//
//  ViewController.swift
//  Workshop-Integrating-UIKit-in-SwiftUI
//
//  Created by Giovanni Monaco on 23/02/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var dismissUIButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let imageConfiguration = UIImage.SymbolConfiguration(pointSize: 50, weight: .medium, scale: .default)
        let image = UIImage(systemName: "xmark.circle.fill", withConfiguration: imageConfiguration)
        dismissUIButton.setImage(image, for: .normal)
        dismissUIButton.tintColor = UIColor.label
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
