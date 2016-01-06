//
//  ViewController.swift
//  DelegateChallenge
//
//  Created by MacbookPRV on 04/01/2016.
//  Copyright © 2016 Pastouret Roger. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var zipcode: UITextField!
    
    //text field delegate objet
    let delegateZipCode=DelegateZipCode()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //set delegate field
        zipcode.delegate=delegateZipCode
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

    
    
    
}

