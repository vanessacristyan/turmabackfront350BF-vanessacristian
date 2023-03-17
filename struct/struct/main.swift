//
//  main.swift
//  struct
//
//  Created by Usuario on 14/03/23.
//

import Foundation
// MARK: - Struct

// Uma struct é muito similar a uma classe, porem uma struct trabalha com VALUE TYPE já a class com REFERENCE TYPE
// Uma struct não trabalha com herança, apenas pode estar em conformidade com protocols
// Na struct não necessita de criar o construtor na mão, ele cria automatico

struct Pessoa {
    var nome: String
    var idade: Int
}


var caio: Pessoa = Pessoa(nome: "Caio", idade: 21)
var matheus: Pessoa = Pessoa(nome: "Matheus", idade: 30)

caio = matheus

caio.nome = "Alfredo"

print(caio.nome)
print(matheus.nome)









//desafio 1


class Vendedor {
    
    var nome: String
   var cpf: String
    var saldo: Double
     var idade: Double
    
    init(nome: String, cpf: String, saldo: Double, idade: Double) {
        self.nome = nome
        self.cpf = cpf
        self.saldo = saldo
        self.idade = idade
    }
    
    }
    
func vender(quantidaDePeca: Int, tipoDepeca: String) {
        
    }
    
    class Loja {
        
        var terno: Double = 400.0
        var vestido: Double = 900.0
     
        }
        
        
     
        
        func vender(quantidaDePeca: Int, tipoDepeca: String) {
            
        }
        
        
    
    
    
    
    
    
    
    // exercicio funcionario
    
    class Funcionario {
        var  nome: String
        var salario: Double
        var cpf: Double
        
    }
    
    class Programador {
        func bonusAnual( valoranual : Double) -> Double {
            return valoranual * 0.2
            
        }
    }
    
    class Disigner {
        func bonusAnual( valoranual : Double) -> Double {
            return valoranual * 0.15
        }
    }
    
    var Funcionario.Programador: Programador = Programador()
    print(Funcionario.Programador.bonusAnual(valoranual: <#T##Double#>))
    
    var Funcionario.Disigner: Disigner = Disigner()
    print(Funcionario.Disigner.bonusAnual(valoranual: <#T##Double#>))
    
    
    
    
    //Exercicio veiculo
    
    
    
