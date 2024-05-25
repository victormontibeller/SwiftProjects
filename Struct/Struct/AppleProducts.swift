//
//  AppleProducts.swift
//  Struct
//
//  Created by iOS Lab on 24/02/24.
//

import Foundation

struct AppleProducts {
    
    var name:   String = ""
    var color:  String = ""
    var price:  Double
    
    var ProductPrice = [AppleProducts]()
    
    var countProductPrice: Int { ProductPrice.count }
    
    init(name: String, color: String, price: Double) {
        self.name = name
        self.color = color
        self.price = price
    }
    
    init(){
    }
    
    mutating func addProducts() {
        var product = AppleProducts.init()

        print("Insert product name.")
        print("Name: ", terminator: " ")
        product.name = String(readLine()!).uppercased()
        
        print("Insert product color.")
        print("Color: ", terminator: " ")
        product.color = String(readLine()!).uppercased()
            
        print("Insert product price.")
        print("Price: ", terminator: " ")
        product.price = Double(readLine()!)!
        
        ProductPrice.append(product)
    }
    
    mutating func updateNameProducts() {
        self.listProducts()
        
        print("Which product do you want to update?")
        print("Name: ", terminator: " ")
        
        let commandLine: String = readLine()!.uppercased()
        var index = ProductPrice.firstIndex(where: {$0.name == commandLine}) ?? 0
        
        var oldName = ProductPrice[index].name
        
        print("What will be the new description?")
        print("Name: ", terminator: " ")
        
        var newName = readLine()!.uppercased()
        ProductPrice[index].name = newName
        
        print("The item description \(oldName) has been changed to: \(ProductPrice[index].name). \n")
    }
    
    func listProducts() -> Void {
        var count = self.countProductPrice
        
        for ind in 0..<count {
            let name =  ProductPrice[ind].name
            let color = ProductPrice[ind].color
            let price = ProductPrice[ind].price
            
            print("Product: \(name), color \(color), price: \(price).")
        }
    }
}
