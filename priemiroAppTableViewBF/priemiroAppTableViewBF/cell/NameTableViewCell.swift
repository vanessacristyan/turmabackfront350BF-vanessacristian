//
//  NameTableViewCell.swift
//  priemiroAppTableViewBF
//
//  Created by Usuario on 06/04/23.
//

import UIKit


//MARK: PASSO A PASSO TABLEVIEW COM XIB

//criar a tableView e fazer sua ligacao
// configurar TableView (delegete e dataSource)
//crir celula customizada

class NameTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!

    static let identifier: String = " NameTableViewCell"
    static func nib() -> UINib{
        return UINib (nibName: " NameTableViewCell", bundle: nil)
    }
    
    
    // ciclo de vida de uma celula igual o  viewDidLold
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}

