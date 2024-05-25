/*:
## Revisão de tomada de decisões

 Pense nas opções de almoço da página anterior. Se você estivesse formulando uma função para o formulário de pedido online do restaurante, poderia fazer o seguinte:
 */
func cookLunch(choice: String) -> String {
    if choice == "massa" {
        return "🍝"
    } else if choice == "hambúrguer" {
        return "🍔"
    } else {
        return "🍲"
    }
}
cookLunch(choice: "massa")
//:  - callout(Experimente): Peça opções diferentes invocando `cookLunch(choice:)` várias vezes. Peça qualquer coisa. Que resultado você recebe?
/*:
 Essa função tem as seguintes desvantagens:

- Se você pedisse qualquer coisa que não fosse `"massa"` ou `"hambúrguer"`, receberia sopa.
- Não existe um cardápio com as opções que você pode pedir. Quando não dá para ver o corpo da função, você só sabe que ela recebe uma `String`, mas não que tipo de string.
 
 Existe um jeito melhor de lidar com situações como essa.

[Anterior](@previous)  |  página 2 de 21  |  [Na sequência: Enumerações](@next)
 */