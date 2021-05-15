// Start of Node class
class Node {
    var data: Int
    var left: Node?
    var right: Node?

    init(d : Int) {
        data  = d
    }
} // End of Node class

// Start of Tree class
public struct QueueArray<T> {
  
  private var array: [T] = []
  public init() {}

  public var isEmpty: Bool {
    array.isEmpty
  }
  
  public var peek: T? {
    array.first
  }
  
  public mutating func enqueue(_ element: T) -> Bool {
    array.append(element)
    return true
  }
  
  public mutating func dequeue() -> T? {
    isEmpty ? nil : array.removeFirst()
  }
}
class Tree {
    func insert(root: Node?, data: Int) -> Node? {
        if root == nil {
            return Node(d: data)
        }

        if data <= (root?.data)! {
            root?.left = insert(root: root?.left, data: data)
        } else {
            root?.right = insert(root: root?.right, data: data)
        }

        return root
    }

    func levelOrder(root: Node?) -> Void {
    	// Complete the function
        guard let node = root else { 
            return 
        }
        var queue: [Node?] = []
        queue.append(node)
        while let node = queue.isEmpty == false ? queue.removeFirst() : nil {
            print("\(node.data)", terminator:" ")
            if let leftNode = node.left {
                queue.append(leftNode)
            }

            if let rightNode = node.right {
                queue.append(rightNode)
            }
        }

    } // End of levelOrder function


} // End of Tree class

var root: Node?
let tree = Tree()

let t = Int(readLine()!)!

for _ in 0..<t {
    root = tree.insert(root: root, data: Int(readLine()!)!)
}

tree.levelOrder(root: root)
