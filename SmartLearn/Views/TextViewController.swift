//
//  TextViewController.swift
//  SmartLearn
//
//  Created by Serafima on 10/29/21.
//

import Foundation
import UIKit

class TextViewController: UIViewController {
    
    // The text received from the previous controller
    var receivedText: String = "Text"
    
    override func viewDidLoad() {
        print(receivedText)
        super.viewDidLoad()
    }
}
