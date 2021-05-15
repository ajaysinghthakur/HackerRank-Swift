import Foundation

class InputHelper {
	
	func takeInputInteger() -> Int {
		guard let inputStr = readLine(), let t = Int(inputStr.trimmingCharacters(in: .whitespacesAndNewlines)) else {
			return -1
		} 
		return t
	}
	func checkConstraint(_ n: Int) {
		if (n < 2) || (n > 20) {
			fatalError("Bad input")
		}
	}
}

func main() {
	let inputHelper = InputHelper.init()
	
	let n = inputHelper.takeInputInteger()
	inputHelper.checkConstraint(n)
	
	//print("\n")
	
	for i in 1...10 {
		print("\(n) x \(i) = \(n * i)")
		//print("\n")
	}
}

main()