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
    
       

    var email: String?
    var senha: String?

    
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
        
                guard let email = email, let senha = senha else {
                    return
                }

                // Salva o email e senha do usuário nas UserDefaults
                UserDefaults.standard.set(email, forKey: "email")
                UserDefaults.standard.set(senha, forKey: "senha")

                // Exibe a tela de login
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                let loginViewController = storyboard.instantiateViewController(withIdentifier: "LoginViewController")
                navigationController?.pushViewController(loginViewController, animated: true)
            }

        

    }
    @IBAction func emailChanged(_ sender: UITextField) {
          email = sender.text
        entrarButton.isEnabled = validarCampos()
      }
      
      @IBAction func senhaChanged(_ sender: UITextField) {
          senha = sender.text
          entrarButton.isEnabled = validarCampos()
      }

    
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
    private func validarCampos() -> Bool {
            guard let email = email, let senha = senha else {
                return false
            }
            
            if email.isEmpty || senha.isEmpty {
                return false
            }
            
            return true
        }
        

}



extension telaDeLoginViewController : UITextFieldDelegate {
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print(#function)
        textField.layer.borderColor = UIColor.blue.cgColor
        textField.layer.borderWidth = 1
        }
    
    func textFieldDidChangeSelection(_ textField: UITextField) {
        if textField.text?.isEmpty ?? true {
            textField.layer.borderWidth = 1
            textField.layer.borderColor = UIColor.red.cgColor
        } else {
            textField.layer.borderWidth = 0
        }
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

  
    

