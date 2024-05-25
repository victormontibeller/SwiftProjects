/*:
## Esgotando as possibilidades

 As instruções switch têm uma característica especial: elas devem ser _completas_. Isso significa que elas devem esgotar todas as possibilidades de verificação do valor. Com uma enum, é possível usar um caso diferente para lidar com cada valor possível.
 */
enum LunchChoice {
    case pasta
    case burger
    case soup
}

let choice = LunchChoice.burger

switch choice {
case .pasta:
    "🍝"
case .burger:
    "🍔"
case .soup:
    "🍲"
}
/*:
 - callout(Exercício): Adicione mais um caso, `taco`, à enum. O que acontece com a instrução switch?

 Você recebe o erro `Switch must be exhaustive` (Uma switch precisa ser completa). Você não pode formular uma instrução switch que não lide com todos os casos.

 - callout(Exercício): Corrija o erro adicionando outro caso à instrução switch. Use os outros casos como guia. Para ver o seletor de emojis, use Control-Command-Space ou copie este: 🌮

 Como as instruções switch precisam ser completas, você pode ter certeza de que um dos casos será correspondente ao valor que está testando. Essa característica evita que você esqueça um valor sem querer, e também avisa caso você altere a definição de uma enum sem modificar as instruções switch nas quais ela é usada.
 
[Anterior](@previous)  |  página 10 de 21  |  [Na sequência: Caso padrão](@next)
 */
