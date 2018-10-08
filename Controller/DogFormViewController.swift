//
//  FormViewController.swift
//  Miawouf
//
//  Created by vincent  on 05/10/2018.
//  Copyright © 2018 Loret Vincent. All rights reserved.
//

import UIKit

class DogFormViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, UITextFieldDelegate{
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var phoneTextField: UITextField!
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return dogRaces.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return dogRaces[row]
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

    @IBAction func dismissKeyBoard(_ sender: UITapGestureRecognizer) {
        nameTextField.resignFirstResponder()
        phoneTextField.resignFirstResponder()
    }
}
