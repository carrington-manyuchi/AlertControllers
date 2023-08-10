//
//  AlertOnVC2.swift
//  AlertControllers
//
//  Created by DA MAC M1 157 on 2023/08/10.
//

import UIKit

class AlertOnVC2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let alert = UIAlertController(title: "Alert trigger", message: "A message goes here", preferredStyle: .alert)

        let dimissButton = UIAlertAction(title: "Dismiss", style: .default) { _ in
            print("Dismiss button Tapped")
        }
        
        let deleteButon = UIAlertAction(title: "Delete", style: .destructive) { _ in
            print("Delete button tapped")
        }
        
        let cancelButton = UIAlertAction(title: "Cancel", style: .cancel) { _ in
            print("Cancel button pressed")
        }
        
        alert.addAction(deleteButon)
        alert.addAction(dimissButton)
        alert.addAction(cancelButton)
        
        
        alert.preferredAction = deleteButon
        
        self.present(alert, animated: true)
        
        self.navigationItem.rightBarButtonItems = [
            UIBarButtonItem(title: "4", style: .plain, target: self, action: #selector(didTapFour)),
            UIBarButtonItem(title: "3", style: .plain, target: self, action: #selector(didTapThree)),
            UIBarButtonItem(title: "2", style: .plain, target: self, action: #selector(didTapTwo)),
            UIBarButtonItem(title: "1", style: .plain, target: self, action: #selector(didTapOne))
        ]
        
    }
    
    
    
    @objc func didTapOne() {
        
    }
    
    
    @objc func  didTapTwo() {
        
    }
    
    
    @objc func didTapThree() {
        
    }
    
    
    
    @objc func didTapFour() {
        
    }


}

