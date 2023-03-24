//
//  ViewController.swift
//  ligacoes
//
//  Created by Usuario on 24/03/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var nameLabel: UILabel!
    
    @IBOutlet weak var LoginButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = "cristian"
    }

    @IBAction func tappedLoginButton(_ sender: UIButton) {
    }
    
}

