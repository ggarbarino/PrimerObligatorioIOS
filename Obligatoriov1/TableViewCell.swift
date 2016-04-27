//
//  TableViewCell.swift
//  Obligatoriov1
//
//  Created by SP07 on 15/4/16.
//  Copyright © 2016 SP07. All rights reserved.
//
import UIKit
import Foundation

class TableViewCell: UITableViewCell {
    
    @IBOutlet var labelDescuento: UILabel!
    @IBOutlet var nombreImagen: UIImageView!
    @IBOutlet var labelNombre: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
