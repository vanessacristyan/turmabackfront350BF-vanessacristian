//
//  ViewController.swift
//  ligacoesTelasNovas
//
//  Created by Usuario on 03/04/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func tappedtela02Button(_ sender: UIButton) {
        performSegue(withIdentifier: "tela02", sender: nil)
    }


}

