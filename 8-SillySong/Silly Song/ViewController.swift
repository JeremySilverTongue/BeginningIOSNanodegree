//
//  ViewController.swift
//  Silly Song
//
//  Created by Jeremy Silver on 7/12/16.
//  Copyright © 2016 Jeremy Silver. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var lyricsView: UITextView!
    
    @IBAction func reset(sender: AnyObject) {
        nameField.text = ""
        lyricsView.text = ""
    }
    
    @IBAction func displayLyrics(sender: AnyObject) {
        lyricsView.text = lyricsForName(nameField.text!)
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func shortNameForName(name: String) -> String {
        let lowercaseName = name.lowercaseString
        let vowelSet = NSCharacterSet(charactersInString: "aeiou")
        if let firstVowelRange = lowercaseName.rangeOfCharacterFromSet(vowelSet) {
            return lowercaseName.substringFromIndex(firstVowelRange.startIndex)
        }
        return lowercaseName
    }
    
    func lyricsForName(name: String) -> String {
        let shortName = shortNameForName(name)
        
        return "\(name), \(name), Bo B\(shortName)\n" +
            "Banana Fana Fo F\(shortName)\n" +
            "Me My Mo M\(shortName)\n" +
            "\(name)"
    }
    
}

