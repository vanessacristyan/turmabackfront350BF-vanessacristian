//
//  ViewController.swift
//  atividadeTextField
//
//  Created by Usuario on 24/03/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextfiel: UITextField!
    @IBOutlet weak var addressTextfiel: UITextField!
    @IBOutlet weak var passwordTextFiel: UITextField!
    @IBOutlet weak var registerButton: UIButton!
    @IBOutlet weak var confirmPasswordTextFiel: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTextField ()
      //  configButton ()
       
    }
        
//        nameTextfiel.placeholder = " Digite seu  nome "
//        addressTextfiel.placeholder = " Digite seu e-mail "
//        passwordTextFiel.placeholder = "Senha"

    
    
    // funcao para desabilitar o "button"
//    func configButton ( ) {
//        registerButton.isEnabled = false
//
//    }
//
    
    
        func configTextField  () {
         // essa fun servir para deixar a viewContoller (viewDidLoad) mais limpa, com a visualizancao melhor
            
        nameTextfiel.delegate = self
        addressTextfiel.delegate = self
        passwordTextFiel.delegate = self
        confirmPasswordTextFiel.delegate = self
        
        nameTextfiel.layer.borderColor = UIColor.lightGray.cgColor
        nameTextfiel.layer.borderWidth = 2
        
        addressTextfiel.layer.borderColor = UIColor.lightGray.cgColor
        addressTextfiel.layer.borderWidth = 2
        
        passwordTextFiel.layer.borderColor = UIColor.lightGray.cgColor
        passwordTextFiel.layer.borderWidth = 2
            
            
        confirmPasswordTextFiel.layer.borderColor = UIColor.lightGray.cgColor
        confirmPasswordTextFiel.layer.borderWidth = 2
    }
    
    func validadeTextfields( ){
        if nameTextfiel.hasText && addressTextfiel.hasText &&  confirmPasswordTextFiel.hasText && passwordTextFiel.hasText {
            if passwordTextFiel.text == confirmPasswordTextFiel.text {
                passwordTextFiel.layer.borderColor = UIColor.lightGray.cgColor
                confirmPasswordTextFiel.layer.borderColor = UIColor.lightGray.cgColor
                registerButton.isEnabled = true
            } else {
                passwordTextFiel.layer.borderColor = UIColor.lightGray.cgColor
                confirmPasswordTextFiel.layer.borderColor = UIColor.lightGray.cgColor
                registerButton.isEnabled = false
            
        } else {
            registerButton.isEnabled = false
        }
        
    }


    @IBAction func tappedRegisterButton(_ sender: UIButton) {
        print("cadastro realizado com sucesso")
    }
    
}

extension ViewController : UITextFieldDelegate {
    
    //campo de texto começou a editar
    
    func textFieldDidBeginEditing(_ textField: UITextField)  {
        textField.layer.borderColor = UIColor.blue.cgColor
        }
    
    
    //campo de texto terminou a edição
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if textField.hasText == false {
            textField.layer.borderWidth = 2
            textField.layer.borderColor = UIColor.red.cgColor
        } else
        {  textField.layer.borderWidth = 0
            
        }
        validadeTextfields ()
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    
    
    
    
}
