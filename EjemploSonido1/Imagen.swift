//
//  Imagen.swift
//  EjemploSonido1
//
//  Created by Andrés Ixpec on 31/10/16.
//  Copyright © 2016 Andrés Ixpec. All rights reserved.
//

import Foundation
import UIKit

public class Imagen{

    let nombre : String
    let ext : String
    
    init(Nombre:String, Ext:String){
        self.nombre = Nombre
        self.ext = Ext
    }

    
    func getURL()->URL{
        return Bundle.main.url(forResource: self.nombre, withExtension: self.ext)!
    }
    
    func getNombreCompleto()->String{
        return ("\(nombre).\(ext)")
    }
    
}
