//
//  telaDeLoginViewController.swift
//  financeapp-treinando
//
//  Created by Usuario on 11/04/23.
//

import UIKit

class telaDeLoginViewController: UIViewController {
    
    
    @IBOutlet weak var emailTexField: UITextField!
    
    @IBOutlet weak var passwordTextfield: UITextField!
    
    
    @IBOutlet weak var entrarButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emailTexField.keyboardType = .emailAddress
        passwordTextfield.keyboardType = .default
        passwordTextfield.isSecureTextEntry = true
        
        
        emailTexField.delegate = self
        passwordTextfield.delegate = self
        
        entrarButton.isEnabled = false
        entrarButton.setTitleColor(.white.withAlphaComponent(0.4), for: .disabled)
        entrarButton.setTitleColor(.white, for: .normal)
        
    }
    
    @IBAction func tappedEntrarButton(_ sender: UIButton) {
    }
    
    @IBAction func tappedErroSenha(_ sender: UIButton) {
    }
    
    @IBAction func tappedCriarButton(_ sender: UIButton) {
    }
     // validacao
    
    
    func validadeTextField () {
        if emailTexField.text != "" && passwordTextfield.text != "" {
            entrarButton.isEnabled = true
        } else {
            entrarButton.isEnabled = false
        }
        
    }
}



extension telaDeLoginViewController : UITextFieldDelegate {
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print(#function)
        textField.layer.borderColor = UIColor.blue.cgColor
        textField.layer.borderWidth = 1
        }
    func textFieldDidEndEditing(_ textField: UITextField) {
        print(#function)
        textField.layer.borderWidth = 0
        validadeTextField()
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print(#function)
              textField.resignFirstResponder()
        return true
    }
    
    }
    

