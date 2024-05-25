//
//  main.swift
//  OptionalClasse
//
//  Created by iOS Lab on 02/03/24.
//

import Foundation

print("Hello, World!")

func isEven(number: Int){
    
    let even: Bool = number % 2 == 0
    
    guard even else{
        print("Ímpar")
        return
    }
    
    print("Par")
}

isEven(number: 6)
