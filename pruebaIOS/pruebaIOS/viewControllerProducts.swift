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
    private var disponible = [
        "43",
        "443",
        "55",
        "5432",
        "32"
    ]
    private var precios = [
        "$4000",
        "$3100",
        "$550",
        "$1000",
        "$3000"
    ]
    private var idProductos = [
        "12-04",
        "00-00",
        "32-04",
        "21-12",
        "34-54",
        "01-33"
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
        (cell as? cellProductsListTableViewCell)?.setUpCellPer(precio: precios[indexPath.row], disponible: disponible[indexPath.row], nombreProd: dataSource[indexPath.row],  idProducto: idProductos[indexPath.row])
        cell.backgroundColor = UIColor.white
        return cell
    }
    
    @IBAction func fromBackView (segue: UIStoryboardSegue) {
        
    }
    
    
}
