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
    @IBOutlet weak var lockableText: UITextField!
    @IBOutlet weak var switchLock: UISwitch!
    
    //text field delegate objet
    let delegateZipCode=DelegateZipCode()
    let delegatelockableText = DelegateLockableText()
    let delegatecashtext = DelegateCashText()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //set delegate field
        zipcode.delegate=delegateZipCode
        cashtext.delegate=delegatecashtext
        lockableText.delegate=delegatelockableText
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    override func viewDidAppear(animated: Bool) {
        

        funclock()
    
    }
    
    
    @IBAction func ActionswitchLock(sender: UISwitch) {
        
        funclock()
        
    }
    
    
    func funclock() {
        
        if switchLock.on {
            
            lockableText.tag=1
        }
        else {
            lockableText.tag=2
            lockableText.endEditing(true)
        }
    }
    
    
     
}

