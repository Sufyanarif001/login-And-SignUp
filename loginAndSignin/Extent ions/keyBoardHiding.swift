//
//  keyBoardHiding.swift
//  loginAndSignin
//
//  Created by Sufyan Arif on 05/11/2021.
//

import Foundation
import UIKit


extension UIViewController{
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


