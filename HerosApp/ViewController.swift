//
//  ViewController.swift
//  HerosApp
//
//  Created by Peter Gicking on 5/18/16.
//  Copyright © 2016 Peter Gicking. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    //MARK: Properties 
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var dankNameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        nameTextField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //MARK: TextFieldDelegate 
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        // Hide the keyboard.
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(textField: UITextField) {
        dankNameLabel.text = textField.text
    }
    
    //MARK: Actions
    @IBAction func GetMemes(sender: UIButton) {
        dankNameLabel.text = "FREGG"
    }

    
    
}

