//
//  ViewController.swift
//  Moviles_Parcial-1
//
//  Created by Alumno on 08/09/22.
//  Copyright © 2022 César Escobedo. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    //Declaracion de variables de audio
    var reproductor : AVAudioPlayer?
    var reproductorMusica : AVAudioPlayer?
    var urlMusica: URL?
    
    //Secuencias
    var secuenciaSquare : [UIImage] = []
    var secuenciaSquare2 : [UIImage] = []
    
    var secuenciaTriangle : [UIImage] = []
    var secuenciaTriangle2 : [UIImage] = []
    
    var secuenciaCircle : [UIImage] = []
    var secuenciaCircle2 : [UIImage] = []
    
    var secuenciaRombo : [UIImage] = []
    var secuenciaRombo2 : [UIImage] = []

    
    //Variables imagenes
    
    @IBOutlet weak var imgSquare: UIImageView!
    @IBOutlet weak var imgTriangle: UIImageView!
    @IBOutlet weak var imgCircle: UIImageView!
    @IBOutlet weak var imgRombo: UIImageView!
    
    @IBOutlet weak var imgPrincipal: UIImageView!
    
    
    //Label Text Area
    @IBOutlet weak var lblTextArea: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Configuraciones iniciales
        do {
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
            try AVAudioSession.sharedInstance().setActive(true)
        } catch let error {
            print(error.localizedDescription)
        }
        
        //Musica fondo
        do{
                let urlMusica = Bundle.main.url(forResource: "MusicaFondo", withExtension: "mp3")
                reproductorMusica = try AVAudioPlayer(contentsOf: urlMusica!, fileTypeHint: AVFileType.mp3.rawValue)
                reproductorMusica?.volume = 0.2
                reproductorMusica?.play()
            }catch let error {
                print(error.localizedDescription)
            }
        
        //Secuencias
        for i in 1...5{
            let imagen = UIImage(named: "Square\(i)")
            secuenciaSquare.append(imagen!)
        }
        for i in 1...5{
            let imagen = UIImage(named: "Triangle\(i)")
            secuenciaTriangle.append(imagen!)
        }
        for i in 1...5{
            let imagen = UIImage(named: "Circle\(i)")
            secuenciaCircle.append(imagen!)
        }
        for i in 1...5{
            let imagen = UIImage(named: "Rombo\(i)")
            secuenciaRombo.append(imagen!)
        }
        
        //Secuencia imagenes
        imgSquare.animationImages = secuenciaSquare
        imgSquare.animationDuration = 1.0
        imgSquare.startAnimating()
        
        imgTriangle.animationImages = secuenciaTriangle
        imgTriangle.animationDuration = 1.0
        imgTriangle.startAnimating()
        
        imgCircle.animationImages = secuenciaCircle
        imgCircle.animationDuration = 1.0
        imgCircle.startAnimating()
        
        imgCircle.animationImages = secuenciaCircle
        imgCircle.animationDuration = 1.0
        imgCircle.startAnimating()
        
    }
    
    
    
    @IBAction func doTap1(_ sender: Any) {
        lblTextArea.text = "Square"
        do {
            //Encontrar url del archivo de audio
            let url = Bundle.main.url(forResource: "Square_1", withExtension: "mp3")
            
            //Asignar valor al reproductor
            reproductor = try AVAudioPlayer(contentsOf: url!, fileTypeHint: AVFileType.mp3.rawValue)
            //Reproducir
            reproductor?.play()
        } catch let error {
            print(error.localizedDescription)
        }
        
        for i in 1...5{
                    let imagen = UIImage(named: "BSquare\(i)")
                    secuenciaSquare2.append(imagen!)
            }
        
        //Imagenes
        imgPrincipal.stopAnimating()
        imgPrincipal.animationImages = secuenciaSquare2
        imgPrincipal.animationDuration = 1.0
        imgPrincipal.startAnimating()
        
    }
    
    @IBAction func doTap2(_ sender: Any) {
        lblTextArea.text = "Triangle"
        do {
            //Encontrar url del archivo de audio
            let url = Bundle.main.url(forResource: "Triangle_1", withExtension: "mp3")
            
            //Asignar valor al reproductor
            reproductor = try AVAudioPlayer(contentsOf: url!, fileTypeHint: AVFileType.mp3.rawValue)
            //Reproducir
            reproductor?.play()
        } catch let error {
            print(error.localizedDescription)
        }
        
        for i in 1...5{
                    let imagen = UIImage(named: "BTriangle\(i)")
                    secuenciaTriangle2.append(imagen!)
            }
        
        //Imagenes
        imgPrincipal.stopAnimating()
        imgPrincipal.animationImages = secuenciaTriangle2
        imgPrincipal.animationDuration = 1.0
        imgPrincipal.startAnimating()
        
    }
    
    @IBAction func doTap3(_ sender: Any) {
        lblTextArea.text = "Circle"
        do {
            //Encontrar url del archivo de audio
            let url = Bundle.main.url(forResource: "Circle_1", withExtension: "mp3")
            
            //Asignar valor al reproductor
            reproductor = try AVAudioPlayer(contentsOf: url!, fileTypeHint: AVFileType.mp3.rawValue)
            //Reproducir
            reproductor?.play()
        } catch let error {
            print(error.localizedDescription)
        }
        
        for i in 1...5{
                    let imagen = UIImage(named: "BCircle\(i)")
                    secuenciaCircle2.append(imagen!)
            }
        
        //Imagenes
        imgPrincipal.stopAnimating()
        imgPrincipal.animationImages = secuenciaCircle2
        imgPrincipal.animationDuration = 1.0
        imgPrincipal.startAnimating()
        
    }
    
    @IBAction func doTap4(_ sender: Any) {
        lblTextArea.text = "Rhombus"
        do {
            //Encontrar url del archivo de audio
            let url = Bundle.main.url(forResource: "Rhombus_1", withExtension: "mp3")
            
            //Asignar valor al reproductor
            reproductor = try AVAudioPlayer(contentsOf: url!, fileTypeHint: AVFileType.mp3.rawValue)
            //Reproducir
            reproductor?.play()
        } catch let error {
            print(error.localizedDescription)
        }
        
        for i in 1...5{
                    let imagen = UIImage(named: "BRombo\(i)")
                    secuenciaRombo2.append(imagen!)
            }
        
        //Imagenes
        imgPrincipal.stopAnimating()
        imgPrincipal.animationImages = secuenciaRombo2
        imgPrincipal.animationDuration = 1.0
        imgPrincipal.startAnimating()
        
    }
}


