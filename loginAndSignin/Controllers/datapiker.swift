//
//  datapiker.swift
//  loginAndSignin
//
//  Created by Sufyan Arif on 08/11/2021.
//

import UIKit

class datapiker: UIViewController {

    @IBOutlet weak var birthdayTextPiker: UITextField!
    let datePicker = UIDatePicker()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createDataPiker()

        // Do any additional setup after loading the view.
    }
    

    func createDataPiker(){
        birthdayTextPiker.textAlignment = .center
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(donePressed))
        toolbar.setItems([doneButton], animated: true)
        birthdayTextPiker.inputAccessoryView = toolbar
        birthdayTextPiker.inputView = datePicker
        datePicker.datePickerMode = .date
        datePicker.preferredDatePickerStyle = .compact
    }
    
    @objc func donePressed(){
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .none
        
        let date = formatter.string(from: datePicker.date)
        birthdayTextPiker.text = date
        self.view.endEditing(true)
    }

}
