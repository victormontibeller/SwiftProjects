/*:
## O problema do if

 As instruções if são úteis para verificar uma única condição, mas quando são usadas para verificar várias condições com `else if`, elas podem ficar difíceis de controlar. 
 
 O código acaba ficando “poluído” visualmente, com muitos textos repetidos que não adicionam novas informações.
 
 A animação abaixo mostra uma instrução if com uma enum. Observe que há muitos textos repetidos e que os casos de enum se perdem em meio ao código:

 ![Instrução if eliminando a poluição visual. Código original:\n```
 if choice == .pasta {
     return "🍝"
 } else if choice == .burger {
     return "🍔"
 } else {
     return "🍲"
 }```
 Novo código: ```
 .pasta
     return "🍝"
 .burger
     return "🍔"
 else
     return "🍲"
 }```](IfNoise.gif)

 A animação destaca outro problema com a instrução if: a última opção não é _qualquer coisa_, é sopa. Se estivesse lendo esse código sem saber o último caso da enum, você teria que adivinhar.
 
 Reescrever a função para usar cada caso específico não melhora muito a situação:
 */
enum LunchChoice {
    case pasta, burger, soup
}

func cookLunch(_ choice: LunchChoice) -> String {
    if choice == .pasta {
        return "🍝"
    } else if choice == .burger {
        return "🍔"
    } else if choice == .soup {
        return "🍲"
    }
    return "Humm... como viemos parar aqui?"
}
cookLunch(.soup)
/*:
 Você ainda precisa da última instrução `return`. Caso contrário, a função provoca um erro, pois não pode saber se todos os casos possíveis foram tratados pelas instruções if.

 - callout(Experimente): Acrescente as barras de comentário à última instrução `return` para ver um erro. Depois, apague as barras de comentário e tente alterar o valor passado para `cookLunch` para que a instrução final `else` seja invocada.\
_(Dica: como você poderia conseguir um valor de enum que não corresponda a nada na instrução if?)_

 Parece que as instruções if não são muito boas para lidar com enums. Então, qual é a melhor opção?

[Anterior](@previous)  |  página 8 de 21  |  [Na sequência: Switch](@next)
 */
