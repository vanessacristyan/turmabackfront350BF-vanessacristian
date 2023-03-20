//
//  ViewController.swift
//  projeto ligacoes
//
//  Created by Usuario on 17/03/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var loginbutton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = "vanessa"
    }

    @IBAction func tapped(_ sender: UIButton) {
    }
    
}

