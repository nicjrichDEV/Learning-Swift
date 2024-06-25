import Cocoa

// MARK: Functions
func showWelcome() {
    print("Welcome to my app!")
    print("By default This prints out a conversion")
    print("chart from centimeters to inches, but you")
    print("can also set a custom range if you want.")
}

showWelcome()

func printTimesTables(number: Int, end: Int) {
    for i in 1...end {
        print("\(i) * \(number) is \(i * number)")
    }
}

printTimesTables(number: 5, end: 20)

// MARK: Returning values from functions
let root = sqrt(169) // Example of data being returned and stored within a root constant

func rollDice(sides: Int) -> Int {
    return Int.random(in: 1...sides)
}

let result = rollDice(sides: 6)
print(result)

func areLettersIdentical(string1: String, string2: String) -> Bool {
    let first = string1.sorted()
    let second = string2.sorted()
    return first == second
}

let test = areLettersIdentical(string1: "ABC", string2: "CBA")


func pythagorus(a: Double, b: Double) -> Double {
    let input = a * a + b * b
    let root = sqrt(input)
    return root
}

let c = pythagorus(a: 3, b: 4)
print(c)

// MARK: Tuples, returning multiple items
func getUser() -> (firstName: String, lastName: String) {
    ("Taylor", "Swift")
}

// De-structuring the tuple values into two variables
let (first, last) = getUser()
print("Name: \(first) \(last)")

// MARK: Customizing parameter labels
func rollAnotherDice(sides: Int, count: Int) -> [Int] {
    var rolls = [Int]()
    
    for _ in 1...count {
        let roll = Int.random(in: 1...sides)
        rolls.append(roll)
    }
    
    return rolls
}

let moreRolls = rollAnotherDice(sides: 6, count: 4)
print(moreRolls)

let lyric = "I see a red door and I want it painted black."
print(lyric.hasPrefix("I see"))

func isUppercase(_ string: String) -> Bool {
    string == string.uppercased()
}

let string = "HELLO, WORLD"
let anotherResult = isUppercase(string)

func printAnotherTimesTable(for number: Int) -> Void {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printAnotherTimesTable(for: 5)
