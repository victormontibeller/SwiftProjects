//
//  FunctionsPrice.swift
//  CommandLineApple
//
//  Created by iOS Lab on 17/02/24.
//

import Foundation

var varProductPrice = [Double]()

func addPrice(){
    print("Insira o preço do produto da Apple")
    
    let commandLine:Double = Double(readLine()!)!
    varProductPrice.append(commandLine)
    
    print("Você inseriu o preço \(commandLine) no produto Apple \n")
    
}

func readPrice(index: Int){
    let readPrice = varProductPrice[index]
    
    print("O preço do produto é \(readPrice) \n")
}

func updatePrice(index: Int){
    print("Qual será o novo valor do item?")
    
    let commandLine:Double = Double(readLine()!)!
    varProductPrice[index] = commandLine
    
    print("O novo valor do produto é \(commandLine) \n")
}

func deletePrice(index: Int){
    varProductPrice.remove(at: index)
    
    print("O item foi eliminado. \n")
}
