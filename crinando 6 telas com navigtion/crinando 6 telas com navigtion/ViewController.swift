//
//  ViewController.swift
//  crinando 6 telas com navigtion
//
//  Created by Usuario on 06/04/23.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func tappedShowtela02Button(_ sender: UIButton) {
        
        let vc:tela2ViewController? = UIStoryboard(name: "tela2ViewController", bundle: nil).instantiateViewController(withIdentifier: "tela2ViewController") as? tela2ViewController
        vc?.modalPresentationStyle = .formSheet
        navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
    }
}
    

