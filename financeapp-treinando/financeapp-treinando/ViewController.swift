//
//  ViewController.swift
//  financeapp-treinando
//
//  Created by Usuario on 18/03/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var iniciarButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }
   
 
    @IBAction func tappedHomeScreenButton(_ sender: UIButton) {
            let vc:homeScreenViewController? = UIStoryboard(name: "homeScreenViewController", bundle: nil).instantiateViewController(withIdentifier: "homeScreenViewController") as? homeScreenViewController
            navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
            
    }
    
    
}

