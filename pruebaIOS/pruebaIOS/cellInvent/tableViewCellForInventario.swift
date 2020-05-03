//
//  tableViewCellForInventario.swift
//  pruebaIOS
//
//  Created by Leonardo Matiz on 3/05/20.
//  Copyright © 2020 Leonardo Matiz. All rights reserved.
//

import UIKit

class tableViewCellForInventario: UITableViewCell {
    
    
    @IBOutlet weak var nameProd: UILabel!
    @IBOutlet weak var stepperCounter: UIStepper!
    @IBOutlet weak var totalProd: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func setCellForInventario(name: String, total: String) {
        nameProd.text = name
        totalProd.text = total
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
