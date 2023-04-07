//
//  tela2ViewController.swift
//  crinando 6 telas com navigtion
//
//  Created by Usuario on 06/04/23.
//

import UIKit

class tela2ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func tappedshowtela03(_ sender: UIButton) {
        let vc:tela3ViewController? = UIStoryboard(name: "tela3ViewController", bundle: nil).instantiateViewController(withIdentifier: "tela3ViewController") as? tela3ViewController
        vc?.modalPresentationStyle = .formSheet
        navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
        
    }
    
    

}
