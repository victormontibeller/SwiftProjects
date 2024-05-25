/*:
## Métodos e propriedades de enums

 Na aula Estruturas, você aprendeu a definir propriedades e métodos em uma estrutura. Também é possível defini-los em uma enum. Isso pode ser útil para definir mais comportamentos.
 
 Por exemplo, pode haver uma propriedade que retorne uma string para cada valor e a exiba ao usuário:
 */
enum LunchChoice {
    case pasta, burger, soup

    var emoji: String {
        switch self {
        case .pasta:
            return "🍝"
        case .burger:
            return "🍔"
        case .soup:
            return "🍲"
        }
    }
}
let lunch = LunchChoice.pasta
lunch.emoji
/*:
 A palavra-chave `self` é usada em métodos e propriedades calculadas e refere-se à instância que deve informar o valor da propriedade.
 
 Pode haver um método que permita a comparação de duas enums. Por exemplo, em um jogo de cartas como Bridge, os naipes são classificados do mais valioso para o menos valioso da seguinte maneira:

- Espadas
- Copas
- Ouros
- Paus

 A enum a seguir representa os naipes e diz qual vale mais:
 */
enum Suit {
    case spades, hearts, diamonds, clubs

    var rank: Int {
        switch self {
            case .spades: return 4
            case .hearts: return 3
            case .diamonds: return 2
            case .clubs: return 1
        }
    }
    
    var symbols: String {
        switch self {
            case .spades: return "♠"
            case .hearts: return "❤"
            case .diamonds: return "♦"
            case .clubs: return "♣️"
        }
    }

    func beats(_ otherSuit: Suit) -> Bool {
        return self.rank > otherSuit.rank
    }
}

let oneSuit = Suit.spades
oneSuit.rank
oneSuit.symbols

let otherSuit = Suit.diamonds
otherSuit.rank
otherSuit.symbols

oneSuit.beats(otherSuit)

/*:
 - callout(Experimente): Adicione uma propriedade à enum Suit que retorne o emoji apropriado de cada naipe: ♠️❤️♦️♣️

 A seguir, vamos fazer um resumo do que você aprendeu.
 
[Anterior](@previous)  |  página 15 de 21  |  [Na sequência: Conclusão](@next)
 */
