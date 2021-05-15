import Foundation


func take2DInput() -> [[Int]] {

	let arr: [[Int]] = AnyIterator{ readLine() }.prefix(6).map {
		let arrRow: [Int] = $0.split(separator: " ").map {
			if let arrItem = Int($0.trimmingCharacters(in: .whitespacesAndNewlines)) {
				return arrItem
				} else { fatalError("Bad input") }
			}

			guard arrRow.count == 6 else { fatalError("Bad input") }

			return arrRow
		}
		guard arr.count == 6 else { fatalError("Bad input") }

		return arr
}

func main() {
	
	let input = take2DInput()

	var maxSum = Int.min

	//
	//print(input)
	// hour glass code
	for ri in stride(from: 0, to: 4, by: 1) {
		for ci in stride(from: 0, to: 4, by: 1) {
			let topLine = input[ri][ci] + input[ri][ci + 1] + input[ri][ci + 2]
			let middle = input[ri + 1][ci + 1]
			let bottom = input[ri + 2][ci] + input[ri + 2][ci + 1] + input[ri + 2][ci + 2]
			let finalSum = topLine + middle + bottom

			maxSum = max(maxSum,finalSum)
		}
	}

	print(maxSum)
}
main()

