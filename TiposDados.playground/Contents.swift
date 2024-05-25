import UIKit

var greeting = "Hello, playground"

// Variáveis:
var integer: Int = 15
var float: Float = 10.34
var double: Double = 3.145159
var string: String = "Olá Mundo!"

// Alterando tipos de variáveis:
var intToFloat: Float = Float(integer)
var floatToouble: Double = Double(float)
var doubleToFloat: Float = Float(double)
var stringToString: String = "Teste: " + String(string)

// Desafio INT > STRING
var integerNumero: Int = 15
var stringConvert: String = String(integerNumero)

// Desafio STRING > NUMERO
var stringConvert2: String = "15"
var integerConvert2: Int = (stringConvert2 as NSString).integerValue
print(integerConvert2)

// Interpolação
var firstName = "Victor"
var lastName = "Montibeller"
var city = "São Bernardo do Camnpo"
var welcomeString = "Olá, " + firstName + ", boas vindas a " + city + "."
var welcomeStringInterpolacao = "Olá, \(firstName), boas vindas a \(city)"
firstName = "Teste"

var x: Int
var y: Int

x = 10
x -= 2
print(x)


var z: String = "Steve"
var lastNameTwo: String = "Jobs"

print(z + " " + lastNameTwo)

print("The Founder is \(z) \(lastNameTwo)")

var o: Bool = true
if !o{
    print("sim");
}
else{
    print("nao");
}

var m: String = "x"
m = readLine()
print(m)
