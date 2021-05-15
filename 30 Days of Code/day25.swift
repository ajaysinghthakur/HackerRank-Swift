
func takeTestCaseInput() -> Int {
    guard let inputStr = readLine(), let t = Int(inputStr) else {
        fatalError("Bad test case input")
    } 
    if (t >= 1) && (t <= 30) {
        return t
    }else {
        fatalError("Bad test case input")
    }
}
func takeValueInput() -> Int {
    guard let inputStr = readLine(), let t = Int(inputStr) else {
        fatalError("Bad test case input")
    } 
    if (t >= 1) && (t <= 2000000000) {
        return t
    }else {
        fatalError("Bad test case input")
    }
}
func isPrime(_ number: Int) -> Bool {
    // right below
    guard number >= 2 else {
        return false
    }
    if number == 2 || number == 3 { return true }
    if number % 2 == 0 {
        return false
    }
    let lastCheck = Int(Double(number).squareRoot())
    // print("lastcheck\(lastCheck)")
    
    for i in stride(from: 3, through: lastCheck, by: 2) {
        // print("index\(i)")
        if number % i == 0 {
            return false
        }
    }
    return true
}

let testCase = takeTestCaseInput()

for _ in 0..<testCase {
    let inputX = takeValueInput()
    let checkPrime = isPrime(inputX)
    // print(checkPrime)
    _ = checkPrime ? print("Prime") : print("Not prime")
    
}