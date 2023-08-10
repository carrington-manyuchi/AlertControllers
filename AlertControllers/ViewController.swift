//
//  ViewController.swift
//  AlertControllers
//
//  Created by DA MAC M1 157 on 2023/08/08.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray5
        
        
       // AlertManager.showNotification(on: self)
        AlertManager.showAlertText(on: self, with: "Heading", with: "This is you alert manager")
        
    }
}
