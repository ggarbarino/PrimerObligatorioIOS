//
//  ViewController.swift
//  Obligatoriov1
//
//  Created by SP07 on 14/4/16.
//  Copyright © 2016 SP07. All rights reserved.
//

import UIKit

class ViewControllerTarjeta: UIViewController {
    
    
    
    let defaults = NSUserDefaults.standardUserDefaults()
    var puntos : Int = 1001
    @IBOutlet weak var labelPuntos: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let myTimer = NSTimer(timeInterval: 15.0, target: self, selector: #selector(ViewControllerTarjeta.refresh), userInfo: nil, repeats: true)
        NSRunLoop.mainRunLoop().addTimer(myTimer, forMode: NSDefaultRunLoopMode)
        
        labelPuntos.text = "Puntos: " + puntos.description
        let email = defaults.stringForKey("Email")
        let password = defaults.stringForKey("Password")
        
        if email == nil || password == nil{
            self.performSegueWithIdentifier("toLogin", sender: nil)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func refresh() {
        puntos += 1
        labelPuntos.text = "Puntos: " + puntos.description
    }
    var cambio : Int = 1
    @IBOutlet var btnCambio: UIButton!
    @IBAction func btnTarjeta(sender: AnyObject) {
        if (cambio == 1){
            btnCambio.setImage(generateQRCode(), forState: .Normal)
            cambio = 2
        }else{
            btnCambio.setImage(UIImage (named: "tarjeta_puntos_ds_y_wii"), forState: .Normal)
            cambio = 1
        }
    }
    
    func generateQRCode()->UIImage? {

        let data = "ucu@ucu.com".dataUsingEncoding(NSISOLatin1StringEncoding)
    
        if let filter = CIFilter(name: "CIQRCodeGenerator") {
            filter.setValue(data, forKey: "inputMessage")
            filter.setValue("H", forKey: "inputCorrectionLevel")
            let transform = CGAffineTransformMakeScale(10, 10)
            
            if let output = filter.outputImage?.imageByApplyingTransform(transform) {
                
                return UIImage(CIImage: output)
                
            }
        }
        return nil
    }
}