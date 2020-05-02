//
//  viewControllerInventario.swift
//  pruebaIOS
//
//  Created by Leonardo Matiz on 2/05/20.
//  Copyright © 2020 Leonardo Matiz. All rights reserved.
//

import Foundation
import UIKit

class ViewControllerInventario: UIViewController {

    @IBOutlet weak var Stepper: UIStepper!
    @IBOutlet weak var labelFresas: UILabel!
    @IBOutlet weak var labelManzana: UILabel!
    @IBOutlet weak var steeperMZ: UIStepper!
    @IBOutlet weak var labelFrj: UILabel!
    @IBOutlet weak var steeprFr: UIStepper!
    
    
    @IBAction func changeValueFR(_ sender: UIStepper) {
        labelFrj.text = Int(sender.value).description
    }
    
    @IBAction func changeValueManzanas(_ sender: UIStepper) {
        labelManzana.text = Int(sender.value).description
    }
    
    @IBAction func changeValueFresas(_ sender: UIStepper) {
        labelFresas.text = Int(sender.value).description
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Stepper.wraps = true
        Stepper.autorepeat = true
        Stepper.maximumValue = 2000
        Stepper.minimumValue = 0
        steeperMZ.wraps = true
        steeperMZ.maximumValue = 2000
        steeperMZ.minimumValue = 0
        steeperMZ.autorepeat = true
    }
    
}
