//  ViewController.swift
//  JonesSpencer_Exercise03
//  Created by Spencer Jones on 3/19/24.

import UIKit

class ViewController: UIViewController, UITextFieldDelegate { // Conforming the view controller to the delegate

    // Outlets
    @IBOutlet var label: UILabel!
    @IBOutlet var textField1: UITextField!
    @IBOutlet var textField2: UITextField!
    @IBOutlet var textField3: UITextField!
    @IBOutlet var textField4: UITextField!
    @IBOutlet var textField5: UITextField!
    @IBOutlet var textField6: UITextField!
    @IBOutlet var doneButton: UIButton!
    
    // Declaring Variables
    var reducedString: String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Setting delegates for text fields
        textField1.delegate = self
        textField2.delegate = self
        textField3.delegate = self
        textField4.delegate = self
        textField5.delegate = self
        textField6.delegate = self
                
        // Changing return key to "Next" for all text fields except final change to "Done"
        textField1.returnKeyType = .next
        textField2.returnKeyType = .next
        textField3.returnKeyType = .next
        textField4.returnKeyType = .next
        textField5.returnKeyType = .next
        textField6.returnKeyType = .done
    }

    // MARK: UITextFieldDelegate Methods
    
    // Dismiss the keyboard when Done key is pressed
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        if textField == textField1 {
            textField2.becomeFirstResponder()
        }
        else if textField == textField2 {
            textField3.becomeFirstResponder()
        }
        else if textField == textField3 {
            textField4.becomeFirstResponder()
        }
        else if textField == textField4 {
            textField5.becomeFirstResponder()
        }
        else if textField == textField5 {
            textField6.becomeFirstResponder()
        }
        else {
            textField.resignFirstResponder()
        }
        return true
    }
    
    
    // Action for next button
    @IBAction func doneButtonTapped(_ sender: Any?) {

        // Check if any text fields are empty
        if textField1.text?.isEmpty ?? true || textField2.text?.isEmpty ?? true || textField3.text?.isEmpty ?? true || textField4.text?.isEmpty ?? true || textField5.text?.isEmpty ?? true || textField6.text?.isEmpty ?? true {
            
            // Alert if any text fields are empty
            let alert = UIAlertController(title: "Error", message: "Please fill in all fields", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(alert, animated: true, completion: nil)
        }
    }
    
    
    // MARK: - Navigation
    
    // Information to be passed to SecondViewController
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let secondVC = segue.destination as! SecondViewController // Set Destination
        
        // Adding textField values into textFieldArray
        secondVC.textFieldArray = [
            textField1.text ?? "",
            textField2.text ?? "",
            textField3.text ?? "",
            textField4.text ?? "",
            textField5.text ?? "",
            textField6.text ?? ""
        ]
    }
}
