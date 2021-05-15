import Foundation

var i = 4
var d = 4.0
var s = "HackerRank "
// Declare second integer, double, and String variables.

guard let sI = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

guard let sD = Double((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

let sS = String((readLine()?.trimmingCharacters(in: .newlines))!)

print(i + sI)
print(d + sD)
print(s + sS)
