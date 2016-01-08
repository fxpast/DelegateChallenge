//
//  DelegateCashText.swift
//  DelegateChallenge
//
//  Created by MacbookPRV on 08/01/2016.
//  Copyright © 2016 Pastouret Roger. All rights reserved.
//

import Foundation
import UIKit

class DelegateCashText: NSObject, UITextFieldDelegate {
    
    
    
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        
        if let _=Int(string) {
            
            return true
        }
        else {
            return false
        }
        
        
    }
    
    func textFieldDidEndEditing(textField: UITextField) {
        
        if  textField.text?.characters.count>0 {
            let numberformatter = NSNumberFormatter()
            numberformatter.numberStyle=NSNumberFormatterStyle.DecimalStyle
            numberformatter.usesGroupingSeparator=true
            numberformatter.maximumFractionDigits=2
            numberformatter.minimumFractionDigits=2
            let doubleValue = Double(textField.text!)! / 100
            let currencyValue = "$" + numberformatter.stringFromNumber(NSNumber(double: doubleValue))!
            textField.text = currencyValue;
        }
        
        
    }
    
    
    func textFieldShouldBeginEditing(textField: UITextField) -> Bool {
        textField.text=""
        return true
    }
    

    
}