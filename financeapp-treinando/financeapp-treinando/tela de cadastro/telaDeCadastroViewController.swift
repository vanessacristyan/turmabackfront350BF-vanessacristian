//
//  telaDeCadastroViewController.swift
//  financeapp-treinando
//
//  Created by Usuario on 11/04/23.
//

import UIKit

class telaDeCadastroViewController: UIViewController {
    
    @IBOutlet weak var nameTexfield: UITextField!
    
    
    @IBOutlet weak var emailTexfield: UITextField!
    
    
    @IBOutlet weak var passwordTexfield: UITextField!
    
    
    @IBOutlet weak var cadastrarButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //esses comandos são para personalizar o teclado campo a campo, " .isSecureTextEntry" deixa a senha com as "bolinhas"
        nameTexfield.keyboardType = .default
        emailTexfield.keyboardType = .emailAddress
        passwordTexfield.keyboardType = .default
        passwordTexfield.isSecureTextEntry = true
        
        
        nameTexfield.delegate = self
        emailTexfield.delegate = self
        passwordTexfield.delegate = self
        
        // esse codigo serve para mostrar ao usuario que ainda não foi preenchido os campos
        
        cadastrarButton.isEnabled = false
        cadastrarButton.setTitleColor(.white.withAlphaComponent(0.4), for: .disabled )
        cadastrarButton.setTitleColor(.white, for: .normal)
        
    }
    
    @IBAction func tappedcadastrarButton(_ sender: UIButton) {
    }
    
    @IBAction func tappedVoltarLogin(_ sender: UIButton) {
        let vc:ViewController? = UIStoryboard(name: "ViewController", bundle: nil).instantiateViewController(withIdentifier: "ViewController") as? ViewController
        navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
    }
    // funcao para validar os campos
    
    func validateTextField () {
        if nameTexfield.text != "" && emailTexfield.text != "" && passwordTexfield.text != ""
        {
            cadastrarButton.isEnabled = true
            
        } else {
            cadastrarButton.isEnabled = false
        }
        
    }
}
    extension telaDeCadastroViewController : UITextFieldDelegate {
        
        
        func textFieldDidBeginEditing(_ textField: UITextField) {
            print(#function)
            textField.layer.borderColor = UIColor.blue.cgColor
            textField.layer.borderWidth = 1
        }
        
        func textFieldDidEndEditing(_ textField: UITextField) {
            print(#function)
            textField.layer.borderWidth = 0
            validateTextField()
        }
        
        func textFieldShouldReturn(_ textField: UITextField) -> Bool {
            print(#function)
            textField.resignFirstResponder() //serve para abaixar o teclado
            return true
            
        }
    }
    
    


