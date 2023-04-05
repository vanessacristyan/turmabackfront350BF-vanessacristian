//
//  ViewController.swift
//  crinando telas de navegação
//
//  Created by Usuario on 05/04/23.
//

import UIKit

class ViewController: UIViewController {


    override func viewDidLoad() {
        super.viewDidLoad()
  
    }

    @IBAction func TappedShowTela02Button(_ sender: UIButton) {
        let vc: tela02ViewController? = UIStoryboard(name: " tela02ViewController", bundle: nil).instantiateViewController(withIdentifier: "tela02ViewController") as? tela02ViewController
        vc?.modalPresentationStyle = .fullScreen
        present ( vc ?? UIViewController(), animated: true)


    
    }
    
}







