//
//  Functions.swift
//  CommandLineApple
//
//  Created by iOS Lab on 03/02/24.
//

import Foundation

var vetProductDescription = [String]()

func addProduct(){
    print("Insira o nome do produto Apple.")
    
    let commandLine: String = readLine()!
    
    if !(vetProductDescription.contains(commandLine)) {
        vetProductDescription.append(commandLine.uppercased())
    } else {
        print("Este produto já existe!")
    }
    
    print("Você inseriu o produto \(commandLine). \n")
    
    addPrice()
}

func readProduct(){
    print("Qual item deseja visualizar?")
    
    let commandLine: String = readLine()!
    var index: Int = 0
    
    index = vetProductDescription.firstIndex(of: commandLine.uppercased()) ?? 0
    
    print("Seu produto está na posição \(index), nome: \(vetProductDescription[index]). \n")
    
    readPrice(index: index)
}

func updateProduct(){
    print("Qual descrição de item você deseja alterar?")
    
    let commandLine: String = readLine()!
    var index: Int = 0
    var oldName: String = ""
    var newName: String = ""
    
    index = vetProductDescription.firstIndex(of: commandLine.uppercased()) ?? 0
    oldName = vetProductDescription[index]
    
    print("Qual será a nova descrição?")
    
    newName = readLine()!
    vetProductDescription[index] = newName.uppercased()
    
    print("A descrição do item \(oldName), foi alterado para: \(vetProductDescription[index]). \n")
    
    updatePrice(index: index)
}

func deleteProduct(){
    print("Qual item deseja eliminar?")
    
    let commandLine: String = readLine()!
    var product: String = ""
    var index: Int = 0
    
    index = vetProductDescription.firstIndex(of: commandLine.uppercased()) ?? 0
    product = vetProductDescription[index]
    vetProductDescription.remove(at: index)
    
    print("O item item \(product), foi eliminado. \n")
    
    readPrice(index: index)
}
