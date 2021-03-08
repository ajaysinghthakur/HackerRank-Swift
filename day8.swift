import Foundation
import Darwin

func inputTestCase() -> Int {
	guard let inputStr = readLine(), let testCase = Int(inputStr.trimmingCharacters(in: .whitespacesAndNewlines)), testCase > 0, testCase < 100001  else { fatalError("Bad input") }
	
	return testCase
}

func takeInputString() -> String {
	guard let inputStr = readLine() else {
		//fatalError("Bad input")
		return "\n"
	}
	//let t = inputStr.trimmingCharacters(in: .whitespacesAndNewlines)
	return inputStr
}

func inputKeyPair() -> [String:String] {
	guard let inputStr = readLine() else {
		fatalError("Bad input")
	}
	let arrStr = inputStr.split(separator: " ")
	
	let name = String(arrStr[0])
	let phonenumber = String(arrStr[1])
	if phonenumber.count != 8 {
		fatalError("Bad input")
	}
	
	return [name:phonenumber]
}
func main() {
	let testCase = inputTestCase()
	var phoneBook: [String:String] = [:]
	for _  in 0..<testCase {
		//print(i)
		let entry = inputKeyPair()
		phoneBook.merge(entry){(_, new) in new}
	}
	var i = 0
	while (i < 100001) {
		let query = takeInputString()
		if query == "\n" {
			exit(0)
		}
		if let val = phoneBook[query] {
			// now val is not nil and the Optional has been unwrapped, so use it
			print("\(query)=\(val)")
		} else {
			print("Not found")
		}
		i += 1
	}	
	
}

main()
