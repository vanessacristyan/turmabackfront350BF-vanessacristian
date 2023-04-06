//
//  ViewController.swift
//  telaModalComReferencia
//
//  Created by Usuario on 05/04/23.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func tappedShowtela02(_ sender: UIButton) {
        performSegue(withIdentifier: "showtela02", sender: nil)
    }
    
}
