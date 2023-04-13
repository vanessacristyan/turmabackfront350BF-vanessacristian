//
//  homeScreenViewController.swift
//  financeapp-treinando
//
//  Created by Usuario on 11/04/23.
//

import UIKit

class homeScreenViewController: UIViewController {
    
    
    @IBOutlet weak var emailButton: UIButton!
    
    
    @IBOutlet weak var cadastrarButton: UIButton!
    
    
    @IBOutlet weak var googleButton: UIButton!
    
    
    @IBOutlet weak var AppleButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func tappedbutton(_ sender: UIButton) {
        let vc:telaDeLoginViewController? = UIStoryboard(name: "telaDeLoginViewController", bundle: nil).instantiateViewController(withIdentifier: "telaDeLoginViewController") as? telaDeLoginViewController
        navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
        
    }
    
    
    
    
    
    
    
    @IBAction func tappedLoginButtton(_ sender: UIButton) {
        let vc:telaDeLoginViewController? = UIStoryboard(name: "telaDeLoginViewController", bundle: nil).instantiateViewController(withIdentifier: "telaDeLoginViewController") as? telaDeLoginViewController
        navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
        }
    
    @IBAction func tappedCadastrarBUtton(_ sender: UIButton) {
        let vc:telaDeCadastroViewController? = UIStoryboard(name: "telaDeCadastroViewController", bundle: nil).instantiateViewController(withIdentifier: "telaDeCadastroViewController") as? telaDeCadastroViewController
        navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
        }

    @IBAction func tappedGmailButton(_ sender: UIButton) {
    }
    
    @IBAction func tappedAppleButton(_ sender: UIButton) {
    }
    
    
    
    
}
