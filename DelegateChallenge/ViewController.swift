//
//  ViewController.swift
//  DelegateChallenge
//
//  Created by MacbookPRV on 04/01/2016.
//  Copyright © 2016 Pastouret Roger. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    
    @IBOutlet weak var zipcode: UITextField!
    @IBOutlet weak var cashtext: UITextField!
    
    //text field delegate objet
    let delegateZipCode=DelegateZipCode()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //set delegate field
        zipcode.delegate=delegateZipCode
        cashtext.delegate=self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        
        if let _=Int(string) {
            
            return true
        }
        else {
            return false
        }
        
        
    }

    func textFieldDidEndEditing(textField: UITextField) {
        
        if  cashtext.text?.characters.count>0 {
            let numberformatter = NSNumberFormatter()
            numberformatter.numberStyle=NSNumberFormatterStyle.DecimalStyle
            numberformatter.usesGroupingSeparator=true
            numberformatter.maximumFractionDigits=2
            numberformatter.minimumFractionDigits=2
            let doubleValue = Double(textField.text!)! / 100
            let currencyValue = "$" + numberformatter.stringFromNumber(NSNumber(double: doubleValue))!
            cashtext.text = currencyValue;
        }
        
        
    }
    
    
    
    func textFieldShouldBeginEditing(textField: UITextField) -> Bool {
        cashtext.text=""
        return true
    }
    
    
}

