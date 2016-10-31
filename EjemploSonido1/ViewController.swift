//
//  ViewController.swift
//  EjemploSonido1
//
//  Created by Andrés Ixpec on 31/10/16.
//  Copyright © 2016 Andrés Ixpec. All rights reserved.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {

    @IBOutlet weak var iViewPortada: UIImageView!
    let listaCanciones = ListaCanciones()
    

    
    
    @IBAction func clickBtnUpVolume() {
        
        if reproductor.volume < 1{
            reproductor.volume = reproductor.volume + 0.1
        }

        lblVolume.text = String(reproductor.volume*10)
    }
    
    @IBOutlet weak var lblVolume: UILabel!
    
    @IBAction func clickBtnDownVolume() {
        if reproductor.volume>0{
          reproductor.volume = reproductor.volume - 0.1
            
        }
        lblVolume.text = String(reproductor.volume*10)
    }
    
    
    
    
    @IBOutlet weak var lblNombreCancion: UILabel!
    private var reproductor: AVAudioPlayer!
    var cancion:Cancion!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      
            ReproducciónAutomática(cancionActual: self.cancion)
            
      
        
        
        
    }


    @IBAction func clickBtnPlay() {
        
        if !reproductor.isPlaying{
            reproductor.play()
        }
    }

    
    @IBAction func clickBtnPause() {
        
        if reproductor.isPlaying{
            reproductor.pause()
        }
    }
    
   
    @IBAction func clickBtnStop() {
        if reproductor.isPlaying{
            reproductor.stop()
            reproductor.currentTime = 0.0
        }
    }
    
    
    func ReproducciónAutomática(cancionActual:Cancion){
        
        do{
            iViewPortada.image = UIImage(named: cancionActual.portada.getNombreCompleto())
            lblNombreCancion.text = cancionActual.nombre
            try reproductor = AVAudioPlayer(contentsOf: cancionActual.getURL())
            reproductor.volume = 1.0
            lblVolume.text = String(reproductor.volume)
            reproductor.play()

            
        }catch{
            print("Ocurrió un error al reproducir el archivo")
        }

          }
    
    
    @IBAction func clickBtnAleatorio() {
        cancion = listaCanciones.devolverCancionAleatoria()
        ReproducciónAutomática(cancionActual:cancion )
        
    }
    
    
}

