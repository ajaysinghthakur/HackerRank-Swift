import Foundation

class Solution<T> {
  //Write your code here
    private var queueArr: [T] = []
    private var stackArr: [T] = []

    public init() {}

    // queue
    public func enqueueCharacter( ch: T) {
        self.queueArr.append(ch)
    }

    public func dequeueCharacter() -> T? {
        if self.queueArr.isEmpty == true {
            return nil
        }
        return self.queueArr.removeFirst()
    }

    // stack

    public func pushCharacter( ch: T) {
        self.stackArr.append(ch)
    }

    public func popCharacter() -> T? {
        if self.stackArr.isEmpty == true {
            return nil
        }
        return self.stackArr.removeLast()
    }

}

// read the string s.
let s = readLine()!

// create the Solution class object p.
let obj = Solution<Character>()

// push/enqueue all the characters of string s to stack.
for character in s { 
    obj.pushCharacter(ch: character)
    obj.enqueueCharacter(ch: character) 
}


var isPalindrome = true

// pop the top character from stack.
// dequeue the first character from queue.
// compare both the characters.
for _ in 0..<(s.count / 2) {
    if obj.popCharacter() != obj.dequeueCharacter() {
        isPalindrome = false
        break
    }
}

// finally print whether string s is palindrome or not.
if isPalindrome {
    print("The word, \(s), is a palindrome.")
} else {
    print("The word, \(s), is not a palindrome.")
}