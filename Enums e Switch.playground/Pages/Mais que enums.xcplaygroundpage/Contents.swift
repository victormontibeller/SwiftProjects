/*:
## Mais que enums

 Até agora, você aprendeu sobre as enums e como usar instruções switch com elas. Você também pode usar instruções switch com outros valores.
 
 Por exemplo, elas podem funcionar com strings e números. Como é impossível criar uma lista completa de todos os valores de strings e números, as instruções switch que usam esses tipos precisam de um caso padrão.
 */
let animal = "gato"

func soundFor(animal: String) -> String {
    switch animal {
        case "gato":
            return "Miau!"
        case "cachorro":
            return "Au-au!"
        default:
            return "Não conheço esse animal!"
    }
}
soundFor(animal: animal)

/*:
 - callout(Exercício): Invoque a função `soundFor(animal:)` algumas vezes. Use animais conhecidos e desconhecidos.\
\
Adicione mais alguns casos de animais à instrução switch e invoque a função para testá-los.
 */

/*:
A seguir, volte ao exemplo do restaurante usando uma instrução switch.
 
[Anterior](@previous)  |  página 13 de 21  |  [Na sequência: De volta ao restaurante](@next)
 */