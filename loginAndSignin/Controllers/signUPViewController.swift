//
//  signUPViewController.swift
//  loginAndSignin
//
//  Created by Sufyan Arif on 05/11/2021.
//

import UIKit

class signUPViewController: UIViewController {
    
    // MARK: -IBoutlets
    
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var countryName: UITextField!
    @IBOutlet weak var riginName: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var confirmPass: UITextField!
    
    // MARK: -IBAction
    
    @IBAction func createAccout(_ sender: UIButton) {
        if (firstName.text == "" || lastName.text == "" || countryName.text == "" || riginName.text == "" || email.text == "" || password.text == "" || confirmPass.text == "") {
            
            self.popUPAleart(title: "Sign Up", message: "Please Enter Text", actionTitle: ["Okay", "Cancel", "Try Again"], actionStyles: [.default, .cancel, .default], action: [
                { Okay in
                    print("okay is pressd")
                },{ Cancel in
                    print("Cancel is pressd")
                },{ Try_Again in
                    print("Try Agian is pressd")
                }
            ])
        }
        
        //vlidation for Email
        
        if isValidEmail(emailID: email.text!) == false {
            self.popUPAleart(title: "Email", message: "Please Enter Valid Email", actionTitle: ["Okay", "Cancel", ], actionStyles: [.default, .cancel, ], action: [
                { Okay in
                    print("okay is pressd")
                    
                },{ Cancel in
                    print("Cancel is pressd")
                }
            ])
        }
    }
        
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyBoardWhenTapped()
        createDataPiker()

        // Do any additional setup after loading the view.
    }
    // MARK: -function for DOB Picker
    
    let datePicker = UIDatePicker()
    
    func createDataPiker(){
        riginName.textAlignment = .center
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(donePressed))
        toolbar.setItems([doneButton], animated: true)
        riginName.inputAccessoryView = toolbar
        riginName.inputView = datePicker
        datePicker.datePickerMode = .date
        datePicker.preferredDatePickerStyle = .wheels
    }
    @objc func donePressed(){
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .none
        let date = formatter.string(from: datePicker.date)
        riginName.text = date
        self.view.endEditing(true)
    }
    
}
