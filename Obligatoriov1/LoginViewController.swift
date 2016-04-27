//
//  ViewController.swift
//  Obligatoriov1
//
//  Created by SP07 on 14/4/16.
//  Copyright © 2016 SP07. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController  {
    
    let defaults = NSUserDefaults.standardUserDefaults()
    
    @IBOutlet var emailInput: UITextField!
    @IBOutlet var passwordInput: UITextField!

    @IBAction func loginButton(sender: AnyObject) {
        let email = emailInput.text
        let password = passwordInput.text
        
        if email == "ucu@ucu.com" && password == "ucu2016"{
            
            defaults.setObject(email, forKey: "Email")
            
            defaults.setObject(password, forKey: "Password")
            
            self.dismissViewControllerAnimated(true, completion: nil)
            
        }else{
            let alert = UIAlertController(title: nil, message: "Datos incorrectos. Intente nuevamente.", preferredStyle: UIAlertControllerStyle.Alert)
            
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: nil))
            
            self.presentViewController(alert, animated: true, completion: nil)
        }

    }
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}