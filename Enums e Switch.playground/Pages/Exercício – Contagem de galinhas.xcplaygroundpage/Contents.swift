/*:
## Exercício – Contagem de galinhas

 Este playground tem o tipo `Chicken` (Galinha) integrado. O tipo `Chicken` tem as propriedades `breed` (raça) e `temper` (temperamento), e as duas propriedades são enums.
 
 Este é um vetor de galinhas:
 */
chickens
//:  Todas as galinhas já saíram do ovo, então você pode contá-las.
var chickenOfInterestCount = 0
for chicken in chickens {
    chickenOfInterestCount += 1
}
chickenOfInterestCount
//:  - callout(Exercício): Altere o código no loop `for…in` para contar apenas as galinhas interessantes, como `.hilarious` (hilária) e `.leghorn` (da raça Legorne). Confira a janela pop-up de preenchimento automático para ver os possíveis valores para cada enum.
/*:
[Anterior](@previous)  |  página 18 de 21  |  [Na sequência: Exercício – Substituição de bools](@next)
 */

