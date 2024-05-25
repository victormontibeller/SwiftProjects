/*:
## Exercício – Definição de enums

 Pratique a definição de suas próprias enums. Lembre-se das regras sobre a nomeação de enums e seus casos. 

 - callout(Exercício): defina uma enum para os pontos cardeais da bússola: Norte, Sul, Leste e Oeste.
 */
enum Bussola {
    case Norte, Sul, Leste, Oeste
}
//:  - callout(Exercício): Defina uma enum para os tipos de peças de um quebra-cabeça: canto, borda e meio.
enum QuebraCabeca {
    case Canto, Borda, Meio
}
//:  - callout(Exercício): Defina uma enum para os modos de reprodução de um app de música: padrão, repetir, repetir todas e aleatório.
// Não é possível usar "repeat”, pois é uma palavra exclusiva na linguagem Swift. repeatOne é uma boa opção
enum Reproducao {
    case Padrão, Repetir, RepetirTodas, Aleatorio
}
/*:
[Anterior](@previous)  |  página 17 de 21  |  [Na sequência: Exercício – Contagem de galinhas](@next)
 */
