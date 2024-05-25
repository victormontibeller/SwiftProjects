import UIKit

// Variáveis;
var musicGenderCollection:  [String] = ["Rock", "MPB", "Funk"]
var musicGenderInserted:    [String] = []

var numberMusic:            Int = 5
var numberCount:            Int = 0

var musicNew:               String = ""

// Loop para inserir enquanto não atingir o contador
while (numberCount < numberMusic) {
    print("Insert \(String(numberCount)) new music gender.")
    musicNew = readLine()!
    
    if !(musicGenderCollection.contains(musicNew)) {
        musicGenderInserted.append(readLine()!)
    } else {
        print("This gender already exists")
    }
}
