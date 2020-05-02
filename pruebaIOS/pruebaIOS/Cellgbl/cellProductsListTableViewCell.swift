//
//  cellProductsListTableViewCell.swift
//  pruebaIOS
//
//  Created by Leonardo Matiz on 2/05/20.
//  Copyright © 2020 Leonardo Matiz. All rights reserved.
//

import UIKit

class cellProductsListTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var prodImageView: UIView!
    @IBOutlet weak var precioLabel: UILabel!
    @IBOutlet weak var disponibleLabel: UILabel!
    @IBOutlet weak var nameProdLabel: UILabel!
    @IBOutlet weak var idProdLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        prodImageView.clipsToBounds = true
        prodImageView.layer.cornerRadius = prodImageView.frame.width / 2
    }

func setUpCellPer(precio: String, disponible: String, nombreProd: String, idProducto: String) {
        precioLabel.text = precio
        disponibleLabel.text = disponible
        nameProdLabel.text = nombreProd
        idProdLabel.text = idProducto
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
