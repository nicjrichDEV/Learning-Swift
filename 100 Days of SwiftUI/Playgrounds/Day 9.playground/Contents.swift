import Cocoa

// MARK: How to create and use closures
func greetUser() {
    print("Hi there!")
}

greetUser()
var greetCopy = greetUser
greetCopy()

let sayHello = { (name: String) -> String in // In marks the end of the closure
    "Hi, \(name)"
}

print(sayHello("from within closure"))


func getUserData(for id: Int) -> String {
    if id == 1989 {
        return "Taylor Swift"
    } else {
        return "Anonymous"
    }
}
        // Data's type is a function that takes an into and returns a string
let data: (Int) -> String = getUserData
let user = data(1989)
print(user)

let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]
let sortedTeam = team.sorted()
print(sortedTeam)

// Custom sorting to always have the captan first
// This is an example with a normal function
func captainFirstSorted(name1: String, name2: String) -> Bool {
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    } else {
        return name1 < name2
    }
}

// Notice that you do not add the () or the parameter values at the call site.
// Below will use a full closure instead
// let captainFirstTeam = team.sorted(by: captainFirstSorted)
// print(captainFirstTeam)


// Same as using an external function but instead using a closure directly at the sorted call site.
let captainFirstTeam = team.sorted(by: {
    (name1: String, name2: String) -> Bool in
        if name1 == "Suzanne" {
            return true
        } else if name2 == "Suzanne" {
            return false
        } else {
            return name1 < name2
        }
})

print(captainFirstTeam)

// MARK: Trailing closures and shorthand syntax
// You can remove the (by: XX) and instead just start it with the trailing closure syntax
let trailingCaptainFirstTeam = team.sorted{ a, b in
    if a == "Suzanne" {
        return true
    } else if b == "Suzanne" {
        return false
    } else {
        return a < b
    }
}

// Shorthand syntax parameters
// Not recommended if you are referring to the parameters more than once
let shorthandCaptainFirstTeam = team.sorted {
    if $0 == "Suzanne" {
        return true
    } else if $1 == "Suzanne" {
        return false
    } else {
        return $0 < $1
    }
}


// Simple reverse sort can be condensed down to
let reverseTeam = team.sorted { $0 > $1 }
print(reverseTeam)

let normalTeamSort = team.sorted { $0 < $1 }

let tOnly = team.filter { $0.hasPrefix("T") }
print(tOnly)

// Map -> Maps a transformed new version of an array
let uppercaseTeam = team.map { $0.uppercased() }
// Little bit of combo action going on here for fun!
print(uppercaseTeam.sorted { a, b in
    if a == "SUZANNE" {
        return true
    } else if b == "SUZANNE" {
        return false
    } else {
        return a < b
    }
})

// MARK: Accept functions as parameters
func makeArray(size: Int, using generator: () -> Int) -> [Int] {
    var numbers = [Int]()
    
    for _ in 0..<size {
        let newNumber = generator()
        numbers.append(newNumber)
    }
    
    return numbers
}

let closureTest = makeArray(size: 50) { Int.random(in: 1...20) }
print(closureTest)

// Note that this works with normal function calls as well check out
// Its the same way just a different way to break up the code instead of doing all the work inside the closure
func generateNumber() -> Int {
    Int.random(in: 1...20)
}

let newRolls = makeArray(size: 50, using: generateNumber)
print(newRolls)

// Making a function accept multiple trailing closures
func doImportantWork(first: () -> Void, second: () -> Void, third: () -> Void) {
    print("About to start first work")
    first()
    print("About to start second work")
    second()
    print("About to start third work")
    third()
    print("Done")
}

// This is where double pressing the return key on your keyboard makes life so much easier
doImportantWork {
    print("Hi from first")
} second: {
    print("Hi from second person guy thing")
} third: {
    print("Check this out third closure guy")
}
