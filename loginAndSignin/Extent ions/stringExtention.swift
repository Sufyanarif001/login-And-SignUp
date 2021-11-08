//
//  stringExtention.swift
//  loginAndSignin
//
//  Created by Sufyan Arif on 05/11/2021.
//

import Foundation
import UIKit


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
}
