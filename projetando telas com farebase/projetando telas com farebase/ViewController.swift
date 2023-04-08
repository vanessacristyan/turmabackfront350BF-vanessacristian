//
//  ViewController.swift
//  projetando telas com farebase
//
//  Created by Usuario on 08/04/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tappedTelaDeLoginButton(_ sender: UIButton) {
        let vc : telaDeLoginViewController? = UIStoryboard(name: "telaDeLoginViewController", bundle: nil).instantiateViewController(withIdentifier: "telaDeLoginViewController") as? telaDeLoginViewController
        navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
    }
    
    @IBAction func tappedTelaDeCadrastroButton(_ sender: UIButton) {
        let vc : telaDeCadastroViewController? = UIStoryboard(name: "telaDeCadastroViewController", bundle: nil).instantiateViewController(withIdentifier: " telaDeCadastroViewController") as?telaDeCadastroViewController
        navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
        
    }
    
    }

