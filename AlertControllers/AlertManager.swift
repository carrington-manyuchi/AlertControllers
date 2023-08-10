//
//  AlertManager.swift
//  AlertControllers
//
//  Created by DA MAC M1 157 on 2023/08/10.
//

import UIKit



class AlertManager {
    
    public static func showAlertText(on vc: UIViewController, with title: String, with message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Dismiss", style: .default))
        
        DispatchQueue.main.async {
            vc.present(alert, animated: true)
        }
        
    }
    
    public static func showNotification(on vc: UIViewController) {
        self.showAlertText(on: vc, with: "No Wifi", with: "You have now wifi")
    }
}
