//
//  InitialViewController.swift
//  SmartLearn
//
//  Created by Serafima on 10/27/21.
//

import UIKit

class InitialViewController: UIViewController {
    
    @IBOutlet weak var textToLearn: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set textField delegate
        textToLearn.delegate = self
        textToLearn.returnKeyType = .done
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // Pass the textField contents to the next View
        if segue.identifier == "toText" {
            let textViewController = segue.destination as! TextViewController
            if let text = textToLearn.text {
                textViewController.receivedText = text
            }
        }
    }

}

extension InitialViewController: UITextFieldDelegate {
    
    // A function to identify if the textField is empty
    func textFieldDidEndEditing(_ textField: UITextField) {
        if textField.text != nil {
            performSegue(withIdentifier: "toText", sender: view)
        }
    }
    
    // A function to get return key trigger the didEndEditing function
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

}

