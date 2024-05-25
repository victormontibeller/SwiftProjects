import UIKit

struct IntQueue {
    
    var items: [Int] = []
    
    mutating func enQueue(item:Int) {
        items.append(item)
    }
    
    mutating func deQueueFirst() {
        if !emptyQueue() {
            items.remove(at: 0)
        }
    }
    
    func peekQueue() -> Int? {
        return items.first
    }
    
    func emptyQueue() -> Bool {
        return items.isEmpty
    }
    
}

var queue = IntQueue()

queue.enQueue(item: 5)
queue.enQueue(item: 10)
queue.enQueue(item: 15)
queue.enQueue(item: 20)

queue.deQueueFirst()

var peek = queue.peekQueue()

print(queue)
