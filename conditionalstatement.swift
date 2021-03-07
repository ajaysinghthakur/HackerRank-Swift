import Foundation


guard let N = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

let weird = "Weird"
let notweird = "Not Weird"

func checkCondition(_ number: Int) -> String {
    
    if ((number % 2) != 0) {
        return weird
    } else if (number >= 2) && (number <= 5) {
        return notweird
    } else if (number >= 6) && (number <= 20) {
        return weird
    } else {
        return notweird
    }
}
let value = checkCondition(N)
print(value)