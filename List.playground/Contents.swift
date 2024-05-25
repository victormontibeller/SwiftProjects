///classe para o nó
class Node {
    var value: String
    var next: Node?
    
    init(value: String) {
        self.value = value
    }
}
/// classe para lista
class SimpleLinkedList {
    ///primeiro elemento
    private var head: Node?
    ///ultimo elemento
    private var tail: Node?
    ///inicio da declaracao dos metodos para auxiliar
    
    ///lista vazia
    public var isEmpty: Bool {
        return head == nil
    }
    ///primeiro da lista
    public var first: Node? {
        return head
    }
    ///ultimo da lista
    public var last: Node? {
        return tail
    }
    ///metodo para adiconar
    public func append(value: String) {
        ///cria um nó novo
        let newNode = Node(value: value)
        ///testa se a calda existe, o if so funciona quando a tail nao é nula
        if let tailNode = tail {
            tailNode.next = newNode
        }
        ///novo nó seria a cabeca
        else {
            head = newNode
        }
        ///tail é o ultimo nó adicionado
        tail = newNode
    }
    ///retorno o nó, acessa o nó em um posição
    public func nodeAt(index: Int) -> Node? {
       ///teste para valor valido
        if index >= 0 {
            ///referencia para head da lista com uma variavel(index) para controlar interacao
            var node = head
            var i = index
            ///para verificar se o head é diferente de nulo testa se está populada
            while node != nil {
                ///quer acessar o nó corrente
                if i == 0 { return node }
                ///comecamosa a iterar
                i -= 1
                node = node!.next
            }
        }
        ///retornamos nulo porque a lista está vazia ou posicao invalida
        return nil
    }

    ///remove de todos elementos e todos os nós
    public func removeAll() {
      head = nil
      tail = nil
    }
    ///remove um nó em um posicao especifica
    public func remove(node: Node) {
        ///variaveis auxiliares para acessor o nó atual   ou anterial
        var current = self.head
        var previous: Node? = nil
        
        while current != nil {
            ///achei o nó procurado para ser removido
            if current?.value == node.value {
                ///testar se o nó nao é nulo, esse nó está no meio da lista o no final nao seria o head
                if previous != nil {
                     ///testabdo se o nó atual é a cauda e deleta
                    if current?.value == self.tail?.value {
                        self.tail = previous
                    }
                    ///atualizar o ponteiro de proximo
                    previous?.next = current?.next
                    break
                } else {
                    //se o head for igual o tail
                    if current?.value == self.tail?.value {
                        ///recebe a valor nulo
                        self.tail = previous
                    }
                    ///atualiza a lista
                    self.head = current?.next
                    break
                }
            }
            
        }
    }
}

///converti para ter uma visao melhor manupulacao de string
extension SimpleLinkedList: CustomStringConvertible{
    public var description: String{
        var text = "["
        var node = head
        while node != nil{
            text += "\(node!.value)"
            node = node!.next
            if node != nil{text += ", "}
        }
        return text + "]"
    }
}

var linkedList = SimpleLinkedList()
linkedList.append(value: "Carro")
linkedList.append(value: "Moto")
linkedList.append(value: "bicicleta")
///print(linkedList.description)
///print(linkedList)

//let firstNode = linkedList.nodeAt(index: 0 )
//print(firstNode?.value)
//
//let SecondeNode = linkedList.nodeAt(index: 1 )
//print(SecondeNode?.value)
//
//let invalideNode = linkedList.nodeAt(index: -1 )
//print(invalideNode?.value)
//
//let secondInvalid = linkedList.nodeAt(index: 3 )
//print(secondInvalid?.value)

//remove um valor da lista
let node = Node(value: "Carro")
linkedList.remove(node: node)

///linkedList.removeAll()
print(linkedList.isEmpty)
