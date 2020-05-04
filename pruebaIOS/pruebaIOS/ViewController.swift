//
//  ViewController.swift
//pruebaIOS
//
//  Created by Leonardo Matiz on 1/05/20.
//  Copyright © 2020 Leonardo Matiz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleAnimation: UILabel!
    func Alert (Message: String){

        let alert = UIAlertController(title: "¡Alerta!", message: Message, preferredStyle: .alert)

        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))

        self.present(alert, animated: true, completion: nil)

    }
    override func viewDidAppear(_ animated: Bool) {
        if CheckInternet.Connection(){
            self.Alert(Message: "Conectado a Internet")
        }
        else{
            self.Alert(Message: "Verifica tu conección a Internet")
        }
    }
    
    @IBAction func Inicio_valid() {
        if CheckInternet.Connection() {
            performSegue(withIdentifier: "Init_app", sender: nil)
        } else {
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    
}

