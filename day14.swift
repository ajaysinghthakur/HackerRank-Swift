import Foundation

class Difference {

    private var elements = [Int]()
    var maximumDifference: Int
	// Write your code here
    init(a: [Int]) {
        self.elements = a
        self.maximumDifference = 0
    }

    internal func computeDifference() {
        var maxValue = elements[0]
        var minValue = elements[0] 
        for value in elements {
            minValue = min(minValue,value)
            maxValue = max(maxValue ,value)
        }
        self.maximumDifference = abs(maxValue - minValue) 
    }

} // End of Difference class

let n = Int(readLine()!)!
let a = readLine()!.components(separatedBy: " ").map{ Int($0)! }

let d = Difference(a: a)

d.computeDifference()

print(d.maximumDifference)