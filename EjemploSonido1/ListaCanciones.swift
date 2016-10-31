//
//  ListaCanciones.swift
//  EjemploSonido1
//
//  Created by Andrés Ixpec on 31/10/16.
//  Copyright © 2016 Andrés Ixpec. All rights reserved.
//

import Foundation


public class ListaCanciones{


    var Canciones : [Cancion] = [Cancion(Nombre:"BachGavotteShort",Extension:"mp3",Portada:Imagen(Nombre: "BachGavotteShort",Ext: "jpg")),
                                 Cancion(Nombre:"DenMeijShort",Extension:"mp3",Portada:Imagen(Nombre: "DenMeijShort",Ext: "jpg")),
                                 Cancion(Nombre:"HarrisLilliburleroShort",Extension:"mp3",Portada:Imagen(Nombre: "HarrisLilliburleroShort",Ext: "jpg")),
                                 Cancion(Nombre:"PurcellSongMusShort",Extension:"mp3",Portada:Imagen(Nombre: "PurcellSongMusShort",Ext: "jpg")),
                                 Cancion(Nombre:"WalloonLilliShort",Extension:"mp3",Portada:Imagen(Nombre: "WalloonLilliShort",Ext: "jpg"))]
    
    
    init(){}
    
    
    func devolverListaNombres()->[String]{
    
        var nombres : [String] = [String]()
        for cancion in Canciones{
            nombres.append(cancion.nombre)
        }
        return nombres
    }
    
    
}
