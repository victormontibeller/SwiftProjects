//
//  main.swift
//  Answers
//
//  Created by iOS Lab on 06/01/24.
//

var lifes           = 3
var questions       = ["Qual a cor do céu?", "Qual a cor do asfalto?", "Qual a cor do concreto?",
                       "Qual a cor da cadeira?", "Qual a cor da garrafa?"]
var correctAnswer   = ["Azul", "Preto", "Cinza", "Preto", "Azul"]
var givenAnswer     = ""
var index           = 0

while lifes > 0 {
    
    print(questions[index])
    givenAnswer = readLine()!
    
    if givenAnswer.uppercased() != correctAnswer[index].uppercased() {
        lifes -= 1
    }
    
    index += 1
    
    if (questions.endIndex == index) {
        print("Você ganhou!")
        break
    }
}

if lifes == 0 {
    print("Você perdeu!")
}
