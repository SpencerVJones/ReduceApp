//  SecondViewController.swift
//  JonesSpencer_Exercise03
//  Created by Spencer Jones on 3/19/24.

import UIKit

class SecondViewController: UIViewController {
    
    // Outlets
    @IBOutlet var label1: UILabel!
    @IBOutlet var label2: UILabel!
    @IBOutlet var label3: UILabel!
    @IBOutlet var label4: UILabel!
    @IBOutlet var label5: UILabel!
    @IBOutlet var label6: UILabel!
    @IBOutlet var cancelButton: UIButton!
    @IBOutlet var reduceButton: UIButton!
    
    // Declaring Variables
    var textFieldArray: [String]?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Assigning label text from text field array
        label1.text = textFieldArray?[0]
        label2.text = textFieldArray?[1]
        label3.text = textFieldArray?[2]
        label4.text = textFieldArray?[3]
        label5.text = textFieldArray?[4]
        label6.text = textFieldArray?[5] 
    }

    
    @IBAction func reduceButtonTapped (_ sender: Any?) {
        // Reduce array into string
        let reducedString = textFieldArray?.reduce("", { $0 + ($1) })
        
        // Pass data back to ViewController
        let firstVC = presentingViewController as! ViewController
        firstVC.label.text = reducedString
        
        // Dismiss SecondViewController
        dismiss(animated: true, completion: nil)
    }
}
