//
//  viewControllerProducts.swift
//  pruebaIOS
//
//  Created by Leonardo Matiz on 2/05/20.
//  Copyright © 2020 Leonardo Matiz. All rights reserved.
//

import Foundation
import UIKit


class viewControllerProducts: UIViewController{
 
    
    @IBOutlet weak var tableList: UITableView!
    private var dataSource = [
        "Pera",
        "banano",
        "fresas",
        "uvas",
        "papaya"
    ]
        
    override func viewDidLoad() {
        super.viewDidLoad()
        tableList.dataSource = self
        tableList.delegate = self
        tableList.register(UINib(nibName: "cellProductsListTableViewCell", bundle: nil), forCellReuseIdentifier: "cellProductsListTableViewCell")

    }
}

extension viewControllerProducts: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("celda de productos seleccionada:  #\(indexPath.row)")
    }
}

extension viewControllerProducts: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableList.dequeueReusableCell(withIdentifier: "cellProductsListTableViewCell", for: indexPath)
        (cell as? cellProductsListTableViewCell)?.setUpCellPer(precio: "35", disponible: "32", nombreProd: dataSource[indexPath.row],  idProducto: "14")
        cell.backgroundColor = UIColor.white
        return cell
    }
    
    @IBAction func fromBackView (segue: UIStoryboardSegue!) {
        
    }
    
}
