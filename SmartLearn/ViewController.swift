//
//  ViewController.swift
//  SmartLearn
//
//  Created by Serafima on 10/27/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textToLearn: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textToLearn.delegate = self
        textToLearn.returnKeyType = .done
    }

}

extension ViewController: UITextFieldDelegate {
    func textFieldDidEndEditing(_ textField: UITextField) {
        print(textField.text ?? "no text")
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

}

