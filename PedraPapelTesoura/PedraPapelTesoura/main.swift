//
//  main.swift
//  PedraPapelTesoura
//
//  Created by iOS Lab on 06/01/24.
//

var lifes           = 3
var options         = ["Pedra", "Papel", "Tesoura"]
var givenAnswer     = 0
var machineAnswer   = 0

while lifes > 0 {
    
    // escolha da maquina
    machineAnswer = Int.random(in: 1...3)
    
    // escolha do usuario
    print("Digite o número da opção: ", dump(options))
    givenAnswer = Int(readLine()!)!
    givenAnswer -= 1
}
