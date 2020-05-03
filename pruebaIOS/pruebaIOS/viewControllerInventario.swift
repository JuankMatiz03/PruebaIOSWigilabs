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

     private var prodConter = [
        "Manzanas",
        "Peras",
        "Bananos"
    ]
    
     private var valueProd = [
        "4000",
        "5000",
        "19000"
    ]
    
    @IBOutlet weak var tableInventario: UITableView!
    //@IBOutlet weak var Stepper: UIStepper!
    //@IBOutlet weak var labelFresas: UILabel!
    //@IBOutlet weak var labelManzana: UILabel!
    //@IBOutlet weak var steeperMZ: UIStepper!
    //@IBOutlet weak var labelFrj: UILabel!
    //@IBOutlet weak var steeprFr: UIStepper!
    //@IBOutlet weak var totalProductsLabel: UILabel!
    
    /*
     @IBAction func changeValueFR(_ sender: UIStepper) {
        labelFrj.text = Int(sender.value).description
        //addValuesToASumAndPutItIntoTheLabel()
    }
    */

    
    override func viewDidLoad() {
        super.viewDidLoad()
       /* Stepper.wraps = true
        Stepper.autorepeat = true
        Stepper.maximumValue = 2000
        Stepper.minimumValue = 0
        steeperMZ.wraps = true
        steeperMZ.maximumValue = 2000
        steeperMZ.minimumValue = 0
        steeperMZ.autorepeat = true
        steeprFr.autorepeat = true
        steeprFr.maximumValue = 2000
        steeprFr.minimumValue = 0
        steeprFr.wraps = true*/
        tableInventario.dataSource = self
        tableInventario.register(UINib(nibName: "tableViewCellForInventario", bundle: nil), forCellReuseIdentifier: "tableViewCellForInventario")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    /*func addValuesToASumAndPutItIntoTheLabel() {
        let summe : Int = Int(Stepper.value + steeperMZ.value + steeprFr.value)
        totalProductsLabel.text = summe.description
    }*/
 
}

extension ViewControllerInventario: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return prodConter.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableInventario.dequeueReusableCell(withIdentifier: "tableViewCellForInventario", for: indexPath)
        (cell as? tableViewCellForInventario)?.setCellForInventario(name: prodConter[indexPath.row], total: valueProd[indexPath.row])
        return cell
    }
}
