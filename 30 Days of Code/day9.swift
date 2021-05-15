import Foundation

// Complete the factorial function below.
func factorial(n: Int) -> Int {
	if n <= 1 {
		return 1
	}
	let n1 = factorial(n: (n-1))
	return n * n1
}

let stdout = ProcessInfo.processInfo.environment["OUTPUT_PATH"]!
FileManager.default.createFile(atPath: stdout, contents: nil, attributes: nil)
let fileHandle = FileHandle(forWritingAtPath: stdout)!

guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!), n >= 2, n <= 12
else { fatalError("Bad input") }

let result = factorial(n: n)

//print(result)

fileHandle.write(String(result).data(using: .utf8)!)
fileHandle.write("\n".data(using: .utf8)!)
