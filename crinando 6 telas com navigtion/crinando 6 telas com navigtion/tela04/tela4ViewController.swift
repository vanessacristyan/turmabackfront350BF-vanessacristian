//
//  tela4ViewController.swift
//  crinando 6 telas com navigtion
//
//  Created by Usuario on 06/04/23.
//

import UIKit

class tela4ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func tappedShowtela05(_ sender: UIButton) {
        
        let vc:tela5ViewController? = UIStoryboard(name: "tela5ViewController", bundle: nil).instantiateViewController(withIdentifier: "tela5ViewController") as? tela5ViewController
        vc?.modalPresentationStyle = .formSheet
        navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
        
        
    }
    

}
