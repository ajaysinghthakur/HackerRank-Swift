// Day 6: Let's Review
import Foundation
import Darwin

let numStrings = Int(readLine()!)!

func printEvenAndOdd(string: String) {
	// This prints inputString to stderr for debugging:
	//fputs("string: " + string + "\n", stderr)
	
	// Print the even-indexed characters
	// Write your code here
	
	let lenght = string.count
	let stringArray = Array(string)
	
	for i in stride(from: 0, to: lenght, by: 2) {
		let even = stringArray[i]
		print("\(even)", terminator:"")
	}
	
	// Print a space
	print(" ", terminator: "")
	
	// Print the odd-indexed characters
	// Write your code here
	for i in stride(from: 1, to: lenght, by: 2) {
		let odd = stringArray[i]
		print("\(odd)", terminator:"")
	}
	// Print a newline
	print()
}

for _ in 1...numStrings {
	let inputString = readLine()!
	printEvenAndOdd(string: inputString)
}