//
//  stringExtention.swift
//  loginAndSignin
//
//  Created by Sufyan Arif on 05/11/2021.
//

import Foundation
import UIKit

// MARK: -Email Validation

extension UIViewController
{
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
                do {
                    let regex = try NSRegularExpression(pattern: ".*[^A-Za-z].*", options: [])
                    if regex.firstMatch(in: string, options: [], range: NSMakeRange(0, string.count)) != nil {
                        return false
                    }
                }
                catch {
                    print("ERROR")
                }
            return true
    }
    
    func isValidEmail(emailID:String) -> Bool {
           let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
           let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
           return emailTest.evaluate(with: emailID)
        }
    
    
    
    // MARK: -Aleart Box
    
    func popUPAleart(
        title:String,
        message:String,
        actionTitle:[String],
        actionStyles:[UIAlertAction.Style],
        action:[((UIAlertAction) -> Void)]){
            let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
            for(index,title) in actionTitle.enumerated(){
                let action = UIAlertAction(title: title, style: actionStyles[index], handler: action[index])
                alert.addAction(action)
            }
            self.present(alert, animated: true, completion: nil)
    }
    
    
    // MARK: -Key Board Hiding
    
    //funtion that dismiss key board when you tap on any free space
    func hideKeyBoardWhenTapped() {
        let tab: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(keyBoarddismiss))
        tab.cancelsTouchesInView = false
        view.addGestureRecognizer(tab)
    }
    @objc func keyBoarddismiss(){
        view.endEditing(true)
    
    }
    
    
    
    
    
}

