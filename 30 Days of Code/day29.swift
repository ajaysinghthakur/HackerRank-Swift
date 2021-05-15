import Foundation

/*
 * Complete the 'bitwiseAnd' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts following parameters:
 *  1. INTEGER N
 *  2. INTEGER K
 */

func bitwiseAnd(N: Int, K: Int) -> Int {
    // Write your code here
    var maxVal: Int = 0
    for i in 1..<N {
        let newStart = i + 1
        for j in newStart...N {
            let val = i & j
            maxVal = val < K ? max(maxVal, val) : maxVal
        }
    }
    return maxVal
}

// let stdout = ProcessInfo.processInfo.environment["OUTPUT_PATH"]!
// FileManager.default.createFile(atPath: stdout, contents: nil, attributes: nil)
// let fileHandle = FileHandle(forWritingAtPath: stdout)!

guard let t = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

for _ in 1...t {

    guard let firstMultipleInputTemp = readLine()?.replacingOccurrences(of: "\\s+$", with: "", options: .regularExpression) else { fatalError("Bad input") }
    let firstMultipleInput = firstMultipleInputTemp.split(separator: " ").map{ String($0) }

    guard let count = Int(firstMultipleInput[0])
    else { fatalError("Bad input") }

    guard let lim = Int(firstMultipleInput[1])
    else { fatalError("Bad input") }

    let res = bitwiseAnd(N: count, K: lim)

    print(res)
    
    // fileHandle.write(String(res).data(using: .utf8)!)
    // fileHandle.write("\n".data(using: .utf8)!)
}
