
//
//  UIViewController+displayError.swift
//  NumbersLight
//
//  Created by guillaume sabatié on 03/02/2020.
//  Copyright © 2020 Guillaume Sabatie. All rights reserved.
//

import Foundation
import UIKit

protocol DisplayErrorMessage {
      func display(errorMessage: String)
}
extension UIViewController: DisplayErrorMessage{
    
    func display(errorMessage: String) {
        let errorAlertController: UIAlertController =
            UIAlertController(title: "Error", message: nil, preferredStyle: .alert)
        
        errorAlertController.addAction(UIAlertAction(title: "Ok", style: .default) {
            (allertAction: UIAlertAction) in
            errorAlertController.dismiss(animated: true, completion: nil)
        })
        errorAlertController.message = errorMessage
        
        self.present(errorAlertController, animated: true, completion: nil)
    }
}

