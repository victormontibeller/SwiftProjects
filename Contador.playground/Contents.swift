import UIKit

// Funcao para gerar números randomicos.
func numbers(jogos: Int, rangeIni: Int, rangeFim: Int){
    
    // Variáveis
    var cont: Int = 0
    var result: Set<Int> = []
    
    // Loop
    while (cont < jogos) {
        result.insert(Int.random(in: rangeIni...rangeFim));
        cont += 1;
    }
    
    // Ordenacao e impressao
    print(result.sorted());
    
    // Retorno
    // return result.sorted();
}

// Chamada do método
numbers(jogos: 5, rangeIni: 1, rangeFim: 1000);

// ------------------------------------------------------------

var number: String = "10";
var convert: Int = Int(number)! + 2;
print (convert);
