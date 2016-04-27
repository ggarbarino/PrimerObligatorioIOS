//
//  ViewController.swift
//  Obligatoriov1
//
//  Created by SP07 on 14/4/16.
//  Copyright © 2016 SP07. All rights reserved.
//

import UIKit

class ViewController: UIViewController  {
    

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func btnEntrar(sender: AnyObject) {
        self.performSegueWithIdentifier("idPantallaPpal", sender: nil)
    }
}

