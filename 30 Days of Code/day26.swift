
import Foundation
func readCharacterSeperate() -> [Int] {
    guard let inputStr: String = readLine() else {
        fatalError("bad input")
    }
    let arr = inputStr.components(separatedBy: " ").map{ Int($0)! }
    if arr.count < 3 {
        fatalError("bad input")
    }
    return arr
}

func checkFine(_ actualDate:[Int], estimateDate:[Int]) {
    let d1 = actualDate[0]
    let m1 = actualDate[1]
    let y1 = actualDate[2]

    let d2 = estimateDate[0]
    let m2 = estimateDate[1]
    let y2 = estimateDate[2]

    if y1 > y2 { // actual date > estimate date by year
        print("10000")
    }else if (m1 > m2) && (y1 == y2) {
        let val = (m1 - m2) * 500
        print(val)
    }else if (d1 > d2) && (m1 == m2) && (y1 == y2) {
        let val = (d1 - d2) * 15
        print(val)
    }else {
        print("0")
    }
}

let actualDate = readCharacterSeperate()
let estimateDate = readCharacterSeperate()
checkFine(actualDate, estimateDate: estimateDate)
