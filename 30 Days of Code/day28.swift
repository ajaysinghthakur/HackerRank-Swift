import Foundation


func isValidName(_ str: String) -> Bool {
        // here, `try!` will always succeed because the pattern is valid
        let regex = try! NSRegularExpression(pattern: "^[a-z]{1,20}$", options: .caseInsensitive)
        return regex.firstMatch(in: str, options: [], range: NSRange(location: 0, length: str.utf16.count)) != nil
}
func isValidEmail(_ str: String) -> Bool {
        // here, `try!` will always succeed because the pattern is valid
        let regex = try! NSRegularExpression(pattern: "^[a-z](\\.?[a-z]){1,50}@gmail\\.com$", options: .caseInsensitive)
        return regex.firstMatch(in: str, options: [], range: NSRange(location: 0, length: str.utf16.count)) != nil
}

guard let N = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

var nameArray: [String] = []
var emailArray: [String] = []
for _ in 1...N {
    guard let firstMultipleInputTemp = readLine()?.replacingOccurrences(of: "\\s+$", with: "", options: .regularExpression) else { 
            fatalError("Bad input") 
        }

    let firstMultipleInput = firstMultipleInputTemp.split(separator: " ").map{ String($0)}

    if firstMultipleInput.count != 2 {
            fatalError("Bad input")
    } 

    let firstName = firstMultipleInput[0]
    let emailID = firstMultipleInput[1]

    if isValidName(firstName) && isValidEmail(emailID) {
            nameArray.append(firstName)
            emailArray.append(emailID)
    }
}
nameArray.sort { (lhs: String, rhs: String) -> Bool in
    return lhs < rhs
}
// print("\n")
for name in nameArray {
        print(name)      
}