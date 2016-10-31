//
//  Cancion.swift
//  EjemploSonido1
//
//  Created by Andrés Ixpec on 31/10/16.
//  Copyright © 2016 Andrés Ixpec. All rights reserved.
//

import Foundation
import UIKit


public class Cancion{
    
    let nombre : String
    let ext : String
    let portada : Imagen


    init(Nombre:String, Extension:String, Portada:Imagen){
        self.nombre = Nombre
        self.ext = Extension
        self.portada = Portada
    }
    
    
    func getURL()->URL{
        return Bundle.main.url(forResource: self.nombre, withExtension: self.ext)!
    }
    
    
}


