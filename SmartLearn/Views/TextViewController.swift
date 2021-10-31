//
//  TextViewController.swift
//  SmartLearn
//
//  Created by Serafima on 10/29/21.
//

import Foundation
import UIKit

class TextViewController: UIViewController {
    
    @IBOutlet weak var receivedTextLabel: UILabel!
    
    // The text received from the previous controller
    var receivedText: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let receivedText = receivedText {
            receivedTextLabel.text = receivedText
        } else {
            receivedTextLabel.text = "No text received"
        }
    }
    
    func getSentences(text: String) -> [String] {
        var sentences: [String] = []
        text.enumerateSubstrings(in: text.startIndex..., options: [.localized, .bySentences]) { (tag, _, _, _) in
            sentences.append(tag ?? "")
        }
        return sentences
    }
}
