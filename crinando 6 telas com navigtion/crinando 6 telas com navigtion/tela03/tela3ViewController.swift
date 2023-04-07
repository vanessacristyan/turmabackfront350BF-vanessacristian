//
//  tela3ViewController.swift
//  crinando 6 telas com navigtion
//
//  Created by Usuario on 06/04/23.
//

import UIKit

class tela3ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func tappedShowtela04Button(_ sender: Any) {
   let vc:tela4ViewController? = UIStoryboard(name: "tela4ViewController", bundle: nil).instantiateViewController(withIdentifier: "tela4ViewController") as? tela4ViewController
        vc?.modalPresentationStyle = .formSheet
        navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
    }

}
