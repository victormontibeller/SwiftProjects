//
//  FunctionsUtils.swift
//  CommandLineApple
//
//  Created by iOS Lab on 17/02/24.
//

import Foundation

func readAll() {
    var count = vetProductDescription.count
    
    for ind in 0..<count {
        let product = vetProductDescription[ind]
        let price = varProductPrice[ind]
        
        print("Produto: \(product), preço: \(price).")
    }
}
