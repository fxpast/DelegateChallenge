//
//  DelegateZipCode.swift
//  DelegateChallenge
//
//  Created by MacbookPRV on 06/01/2016.
//  Copyright © 2016 Pastouret Roger. All rights reserved.
//

import Foundation
import UIKit

class DelegateZipCode: NSObject, UITextFieldDelegate {
    
    
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        
        if let num=Int(string) {
            
            if let chaine = textField.text?.characters.count {
                
                if chaine>4 && num>0 {
                    return false
                }
                else {
                    return true
                }
            }

        }
        
        
        
        if string.isEmpty {
            return true
        }
        else {
            
            return false
        }
    }
    
}