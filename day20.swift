import Foundation


public func bubbleSort<Element>(_ array: inout [Element]) where Element: Comparable {
  guard array.count >= 2 else {
    return
  }
  var totolSwaps = 0
  let totalElement = array.count
  for end in (1..<totalElement).reversed() {
    var swapped = 0
    for current in 0..<end {
      if array[current] > array[current + 1] {
        array.swapAt(current, current + 1)
        swapped += 1
      }
    }
    totolSwaps += swapped
    if swapped == 0 {
      break
    }
  }

  print("Array is sorted in \(totolSwaps) swaps.")
  print("First Element: \(array[0])")
  print("Last Element: \(array[totalElement - 1])")

}

// read the integer n
let n = Int(readLine()!)!

if n < 2 && n > 600 {
    fatalError("Bad input")
}
// read the array
var arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }
bubbleSort(&arr)
