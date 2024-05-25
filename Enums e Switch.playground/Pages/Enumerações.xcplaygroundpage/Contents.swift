/*:
## Enumerações

 Na linguagem Swift, você pode usar uma _enumeração_ para representar um grupo de opções relacionadas. Cada opção se chama _caso_. Você pode definir seus próprios tipos de enumeração, assim como pode definir suas próprias estruturas:
 */
enum LunchChoice {
    case pasta
    case burger
    case soup
}
/*:
A declaração acima cria um novo tipo, `LunchChoice` (opção de almoço). Instâncias de `LunchChoice` podem ser somente um dos três casos definidos.
 
 Normalmente, chamamos as enumerações pela abreviação _enum_.
 
 Os nomes das enums começam com letra maiúscula, assim como os outros nomes de tipos.\
 Os nomes dos casos começam com letra minúscula, assim como os nomes de propriedades e métodos.
 
 Os nomes das enums devem ser sempre no singular, por exemplo, `LunchChoice`, e não `LunchChoices`, pois o valor se refere a apenas uma opção, e não a várias.

Você pode criar instâncias assim:
 */
let choice = LunchChoice.burger
/*:
Um dos benefícios de usar uma enum é que ela limita as opções aos casos que contém. Não é possível pedir um prato fora do cardápio.\
Apague as barras de comentário da linha de código abaixo para ver o erro. Quando terminar, adicione as barras novamente:
 */
// let special = LunchChoice.fish

//:  - callout(Experimente): Você e seus amigos sairão para almoçar. Crie constantes para cada pessoa e atribua a elas casos diferentes na enum. Veja como o preenchimento automático sugere as opções possíveis.

/*:
 A seguir, aprenda como o sistema de tipos compreende as enums.\
[Anterior](@previous)  |  página 3 de 21  |  [Na sequência: Enums e inferência de tipos](@next)
 */
