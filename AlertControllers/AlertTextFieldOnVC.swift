//
//  AlertTextFieldOnVC.swift
//  AlertControllers
//
//  Created by DA MAC M1 157 on 2023/08/10.
//

import UIKit

class AlertTextFieldOnVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemMint
        
        let alert = UIAlertController(title: "Alert trigger", message: "A message goes here", preferredStyle: .alert)

        alert.addTextField { textField in
            textField.placeholder = "Username"
            textField.autocapitalizationType = .words
            textField.keyboardType = .decimalPad
            textField.returnKeyType = .go
            textField.textContentType = .username
        }
        
        
        alert.addTextField { textfield in
            textfield.placeholder = "Password"
            textfield.autocapitalizationType = .words
            textfield.isSecureTextEntry = true
        }
        
        let button = UIAlertAction(title: "Continue", style: .default) { _ in
            let tfUsername = alert.textFields![0].text
            let tfPswd = alert.textFields![1].text
            
            
            self.printContent(tfPswd)
            self.printContent(tfUsername)
        }
        
        alert.addAction(button)
        alert.present(alert, animated: true)
        
    }

}
