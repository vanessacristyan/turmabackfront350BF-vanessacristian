//
//  tela5ViewController.swift
//  crinando 6 telas com navigtion
//
//  Created by Usuario on 06/04/23.
//

import UIKit

class tela5ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func tappedShowTela06(_ sender: UIButton) {
        let vc:tela6ViewController? = UIStoryboard(name: "tela6ViewController", bundle: nil).instantiateViewController(withIdentifier: "tela6ViewController") as? tela6ViewController
        vc?.modalPresentationStyle = .formSheet
        navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
        
        
    }
    
}
