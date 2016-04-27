//
//  Producto.swift
//  Obligatoriov1
//
//  Created by SP07 on 15/4/16.
//  Copyright © 2016 SP07. All rights reserved.
//

import Foundation

class Producto {
    var descuento : String = ""
    var nombre : String = ""
    var imagen : String = ""
    
    init(descuento: String, nombre: String, imagen: String){
        self.descuento = descuento
        self.nombre = nombre
        self.imagen = imagen
    }
    
}


