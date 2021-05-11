//
//  ViewController.swift
//  FastFoodie
//
//  Created by MacBook Pro on 25/4/21.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var passTextfield: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    

    @IBAction func emailtextfield(_ sender: Any) {
    }
    
    
    @IBAction func showHidetextfield(_ sender: Any) {
        
        if passTextfield.isSecureTextEntry == true{
            
            passTextfield.isSecureTextEntry = false
            
        }else{
            passTextfield.isSecureTextEntry = true
        }
    }
    
    
    @IBAction func signInButton(_ sender: Any) {
        
    }
    
}

