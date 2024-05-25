//
//  main.swift
//  CollectionsCommandLine
//
//  Created by iOS Lab on 02/12/23.
//

import Foundation

// Variáveis;
var musicGenderCollection:  [String] = ["Rock", "MPB", "Funk"]
var musicGenderInserted:    [String] = []

var numberMusic:            Int = 5
var musicNew:               String = ""

// Loop para inserir enquanto não atingir o contador
while (numberMusic > 0) {
    print("Insert \(String(numberMusic)) new music gender.")
    musicNew = readLine()!
    
    if !(musicGenderCollection.contains(musicNew)) {
        musicGenderInserted.append(readLine()!)
        numberMusic = numberMusic - 1
    } else {
        print("This gender already exists")
    }
    
}
