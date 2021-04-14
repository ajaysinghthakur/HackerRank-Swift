import Foundation

class Node {
    let data: Int
    var next: Node?

    init(data: Int) {
        self.data = data
    }
}

func insert(head: Node?, data: Int!) -> Node? {
    // Enter your code here.
    if head == nil {
        // return first
        let newHead = Node.init(data: data)
        return newHead
    }
    var current = head
    while current?.next != nil {
        //print(current!.data, terminator: " ")
        current = current!.next
    }

    let newNode = Node.init(data: data)
    current?.next = newNode

    return head
}

func display(head: Node?) {
    var current = head

    while current != nil {
        print(current!.data, terminator: " ")
        current = current!.next
    }
}

var head: Node?
let n: Int = Int(readLine()!)!

for _ in 0..<n {
    let element = Int(readLine()!)!
    head = insert(head: head, data: element)
}

display(head: head)