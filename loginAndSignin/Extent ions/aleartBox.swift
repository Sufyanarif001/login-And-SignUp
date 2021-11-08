//
//  aleartBox.swift
//  loginAndSignin
//
//  Created by Sufyan Arif on 05/11/2021.
//

import Foundation
import UIKit

// MARK: -Externtion for AleartBOx

extension UIViewController{
    //Function that show alert
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
}
