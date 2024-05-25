 //
//  main.swift
//  commandLine
//
//  Created by iOS Lab on 02/09/23.
//

import Foundation

// print("Hello, World!")

/*
    print("Whats is your favorite color?")
    let color = readLine()
    
    if color?.lowercased() == "red"{
        print("You have a good taste!")
    } else {
        print("I prefer bue.")
    }
 */

/*
print("Whats is you full name?")
var name = readLine()
printName(name: name ?? "")

func printName(name:String){
    print("\(name ), what a beautifull name!")
}
 */

var name:String         = returnName(message:"What is my name?")
var nameLucas:String    = returnName(message:"What is Lucas name?")
var age:Int             = returnAge(message:"What is your age?")
var color:String        = returnColor(message:"What is your favorite color?")
var weight:Double       = returnWeight(message:"What is your weight?")
var heigh:Double        = returnHeigh(message:"What is your heigh?")
var imc:String          = calculaImc(weight, heigh)

func returnName(message:String) -> String{
    print(message)
    return String(readLine()!)
}

func returnAge(message:String) -> Int{
    print(message)
    return (readLine()! as NSString).integerValue
}

func returnColor(message:String) -> String{
    print(message)
    return String(readLine()!)
}

func returnWeight(message:String) -> Double{
    print(message)
    return (readLine()! as NSString).doubleValue
}

func returnHeigh(message:String) -> Double{
    print(message)
    return (readLine()! as NSString).doubleValue
}

func calculaImc(_ weight:Double, _ height:Double) -> String{
    var imc:Double = height/(weight*weight)
    var status:String
    
    switch imc{
    case 0 ... 18.5:
        status = "Voce está magro!"
    case 18.5 ... 24.9:
        status = "Voce está saudável"
    case 25 ... 29.9:
        status = "Voce está gordo"
    case 30... :
        status = "Voce está obeso"
    default:
        status = "Sem dados"
    }
    return status
}

print("My name is \(name), name Lucas is \(nameLucas), my age is \(age), favorite color \(color), weight \(weight), IMC \(imc).")
