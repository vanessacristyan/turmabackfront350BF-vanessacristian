//
//  ViewController.swift
//  primeiroApptextfield
//
//  Created by Usuario on 22/03/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextfield: UITextField!
    @IBOutlet weak var namelogin: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextfield.placeholder = " Digite seu  nome "
        nameTextfield.placeholder = " Digite seu e-mail "
        //placeholder => é esse nome que fica meio transparente/ opaca usado para o usuarui saber o que deve escrever
        nameTextfield.delegate = self
        nameTextfield.layer.borderWidth = 2
        nameTextfield.layer.borderColor = UIColor.lightGray.cgColor
    }


}
//extension serve para organizar o codigo

extension ViewController: UITextViewDelegate {
    
//quando o teclado subir esse metodo sera disparado
    // didbegin => autocomplete
    
    func textFieldDidBeginEditing ( _ textfield: UITextField) {
        print(" textFieldDidBeginEditing")
        textfield.layer.borderColor = UIColor.blue.cgColor
        textfield.layer.borderColor = 1
    }
//quando o teclado abaixar / some da tela
//metoso  utilizado para fazer validacoes de campo
// didEnddit
    
    func textFielDidEndEditing(_ textFiel: UITextField){
        print("textFielDidEndEditing ")
      if textFiel.text == "caio"
            textFiel.layer.borderWidth = 0
    }else {
        textfield.layer.borderColor = UIcolor.red.cgColor
        textfield.layer.borderWidth = 1
    }
}
//quando pressionamos no botao retorno
//return
func textFieldShoulReturn(_ textField : UITextField) ->  Bool {
    print("textFieldShoulReturn")
    textField.resignFirstResponder()
    return truee 
}
