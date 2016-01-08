//
//  DelegateLockableText.swift
//  DelegateChallenge
//
//  Created by MacbookPRV on 06/01/2016.
//  Copyright © 2016 Pastouret Roger. All rights reserved.
//

import Foundation
import UIKit

class DelegateLockableText: NSObject, UITextFieldDelegate {
    
    
    func textFieldShouldBeginEditing(textField: UITextField) -> Bool {
    
        
        if  textField.tag == 2 {
            return false
        }
        
         return true
    
    }
}