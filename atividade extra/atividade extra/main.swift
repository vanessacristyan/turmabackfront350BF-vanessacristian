//
//  main.swift
//  atividade extra
//
//  Created by Usuario on 16/03/23.
//

import Foundation

//var numero1: Int = 100
//var numero2: Int = 50


//if numero1 > numero2 {
    //print("numero maior")
//}
//else {
  //  print("numero menor")
        
    //}


//var numero1: Int = 2
//var numero: Int = -1
//
//
//if numero > 0 {
//    print("positivo")
//}
//else {
//    print("negativo")
//
//    }
//desafio 1


class Vendedor {
    
    private var nome: String
    private var cpf: String
    private var saldo: Double
    
    var idade: Double
    
    
    init(nome: String, cpf: String, saldo: Double, idade: Double) {
        self.nome = nome
        self.cpf = cpf
        self.saldo = saldo
        self.idade = idade
    }
    
    
    func setIdade(idade: Double) { // alterar o dado
        self.idade = idade
    }
    
    func getIdade(){ // mostrar ou pegar o dado
        print(self.idade)
    }
        
    
    func setCPF(cpf: String) {
        var dadosTratados = cpf.replacingOccurrences(of: ".", with: "")
        dadosTratados = dadosTratados.replacingOccurrences(of: "/", with: "")
        self.cpf = dadosTratados
    }
    
    func getCPF(){
        print(self.cpf)
    }
   
}


var prisco = Vendedor(nome: "Prisco Cleyton", cpf: "123213", saldo: 7777, idade: 30)

var vanessa = Vendedor(nome: "Vanessa Cleyton", cpf: "123213", saldo: 7777, idade: 30)

prisco.setCPF(cpf: "12321321.321321")

prisco.getCPF()







