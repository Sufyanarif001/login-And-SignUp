//
//  employeData.swift
//  loginAndSignin
//
//  Created by Sufyan Arif on 09/11/2021.
//

import Foundation
import UIKit

public struct Employe {
    
    
    
    // MARK:- Properties
    
    let pic:UIImage? = nil
    let name:String
    let job:String
    
    // MARK:- Private Funtions
    
    func displayName() -> String{
        return "Name: \(name)"
    }
    
   
    
    func displayJob() -> String{
        return "Name: \(job)"
    }
    
   
    
    var picture:UIImage{
        return (UIImage(named: "pic_\(name.lowercased())"))!
    }
    
}

// MARK:- Employe Extention

extension Employe{
    static var Tuba:Employe{
        return Employe(name: "Tuba",  job: "Reserarcher" )
    }
    
    static var Sana:Employe{
        return Employe(name: "Sana", job: "IOS Developer" )
    }
    
    static var Mariam:Employe{
        return Employe(name: "Mariam",  job: "SQA" )
    }
    
    static var Ali:Employe{
        return Employe(name: "Ali",  job: "Unity 3D Developer" )
    }
    
    static var Saif:Employe{
        return Employe(name: "Saif",  job: "Manager" )
    }
    
    static var Umer:Employe{
        return Employe(name: "Umer",  job: "Android Developer" )
    }
    
}


