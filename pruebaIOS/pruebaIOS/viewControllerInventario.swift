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
        
    override func viewDidLoad() {
        super.viewDidLoad()

        stepperPr.wraps = true
        stepperPr.autorepeat = true
        stepperPr.minimumValue = 0
        stepperPr.maximumValue = 2000
        stepperPp.wraps = true
        stepperPp.autorepeat = true
        stepperPp.minimumValue = 0
        stepperPp.maximumValue = 2000
        stepperUV.wraps = true
        stepperUV.autorepeat = true
        stepperUV.minimumValue = 0
        stepperUV.maximumValue = 2000
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBOutlet weak var totalValueProductsLabel: UILabel!
    @IBOutlet weak var labelValuePr: UILabel!
    @IBOutlet weak var labelValuePp: UILabel!
    @IBOutlet weak var labelValueUV: UILabel!
    @IBOutlet weak var stepperPr: UIStepper!
    @IBOutlet weak var stepperPp: UIStepper!
    @IBOutlet weak var stepperUV: UIStepper!
    

    @IBAction func stepperPrAc(_ sender: UIStepper) {
        labelValuePr.text = Int(sender.value).description
        addValuesToASumAndPutItIntoTheLabel()
    }
    
    
    @IBAction func stepperPpAc(_ sender: UIStepper) {
        labelValuePp.text = Int(sender.value).description
        addValuesToASumAndPutItIntoTheLabel()
    }
    

    @IBAction func stepperUVAc(_ sender: UIStepper) {
        labelValueUV.text = Int(sender.value).description
        addValuesToASumAndPutItIntoTheLabel()
    }

    func addValuesToASumAndPutItIntoTheLabel() {
        let summe : Int = Int(stepperUV.value + stepperPp.value + stepperPr.value)
        totalValueProductsLabel.text = summe.description
    }
 
}



