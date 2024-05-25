/*:
## Quando usar enums

 Sempre que houver um grupo restrito de valores relacionados no código, é uma boa ideia usar uma enum.
 
 Se não houver restrições de valor ou se houver muitos valores possíveis, as enums provavelmente não são a melhor opção.
 
 Imagine que você esteja programando um app, um joguinho de esportes bem divertido. Você usará uma estrutura para representar os jogadores em campo. Cada um deles tem as seguintes propriedades:

- `name` (nome)
- `skillLevel` (habilidade)
- `team` (time)
- `position` (posição)

 `name` seria uma `String`. Nesse caso, você não usaria uma enum porque existem muitas possibilidades.
 
 `skillLevel` seria um `Int`, pois o jogo usa um sistema de pontos para indicar a habilidade que o usuário vai ganhando.
 
 `team` seria uma enum. Há apenas dois times em campo: `.red` e `.blue` (vermelho e azul).
 
 `position` também seria uma enum: `.quarterback`, `.seeker`, `.pitcher`, etc., dependendo de como você define o jogo. 

 - callout(Exercício): Defina enums para representar as opções de time e posição. Confira as páginas anteriores se precisar de uma revisão sobre sintaxe.
 */

/*:
Na próxima página, você aprenderá a comparar enums.\
[Anterior](@previous)  |  página 5 de 21  |  [Na sequência: Comparação de enums](@next)
 */