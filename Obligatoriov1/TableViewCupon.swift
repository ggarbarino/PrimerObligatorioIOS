//
//  ViewController.swift
//  Obligatoriov1
//
//  Created by SP07 on 14/4/16.
//  Copyright © 2016 SP07. All rights reserved.
//

import UIKit

class ViewControllerCupon: UIViewController {
    
    var cupon: String = ""
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        labelCupon.text = cupon
        qrImage.image = generateQRCode()
        
    }
    @IBOutlet var labelCupon: UILabel!
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBOutlet var qrImage: UIImageView!

    
     func generateQRCode()->UIImage? {
        
        let data = cupon.dataUsingEncoding(NSISOLatin1StringEncoding)
        
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
