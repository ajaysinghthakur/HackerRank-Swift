import Foundation

let young = "You are young."
let teen = "You are a teenager."
let old = "You are old."
let invalid = "Age is not valid, setting age to 0."

class Person {
    var age: Int = 0

    init(initialAge: Int) {
        // Add some more code to run some checks on initialAge
        if initialAge < 0 {
            print(invalid)
        }
        self.age = initialAge >= 0 ? initialAge : 0
    }

    func amIOld() {
        // Do some computations in here and print out the correct statement to the console
        if self.age < 13 {
            print(young)
        } else if self.age < 18 {
            print(teen)
        } else {
            print(old)
        }
    }

    func yearPasses() {
        // Increment the age of the person in here
        self.age += 1
    }
}

func takeInput() -> Int {
    guard let inputStr = readLine(), let t = Int(inputStr) else {
        return 0
    } 
    return t
}



func main() {
    let t = takeInput()
    if (t < 1) || (t > 4) {
        print(-1)
        return
    } 
    for _ in 0..<t {
        let age = takeInput()
        if (t < -5) || (t > 30) {
            print(-1)
            return
        } 
        let p = Person(initialAge: age)
        
        p.amIOld()
        
        for _ in 1...3 {
            p.yearPasses()
        }
        
        p.amIOld()
        
        print("")
    }
}

main()


