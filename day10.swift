import Foundation


func takeInputInteger() -> Int {
	guard let inputStr = readLine(), let testCase = Int(inputStr.trimmingCharacters(in: .whitespacesAndNewlines)), testCase > 0, testCase <= 1000000  else { fatalError("Bad input") }
	
	return testCase
}
func decTobinary(_ n:Int) -> [Int] {
	var remArray: [Int] = []
	var varNum = n
	var size = 0
	while (varNum > 0) {
		let rem = varNum % 2
		remArray.append(rem)
		varNum = Int(varNum / 2)
		size += 1
	}
	return remArray.reversed()
}
func getMaxLength( _ arrInt: [Int]) -> Int {
	// count each continous and reset
	var count = 0
	// store max count
	var result = 0
	
	for element in arrInt {
		
		if element == 0 {
			count = 0
		} else {
			count += 1
			result = max(result,count)
		}
		
	} 
	
	return result
}
func main() {
	let input = takeInputInteger()
	let binaryArr = decTobinary(input)
	
	let result = getMaxLength(binaryArr)
	
	print(result)
	
}
main()