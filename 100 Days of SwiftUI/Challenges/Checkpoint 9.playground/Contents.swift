import Cocoa

// MARK: - Checkpoint 9 -

// Optional chaining and nil coalescing
func randomizer3000(in array: [Int?]?) -> Int {
    // Using lazy means its not actually calculated unless its needed
    lazy var random = Int.random(in: 1...100)
    return (array?.randomElement() ?? random) ?? random
}

// Using if let with a little message
func randomizer4000(in array: [Int?]?) -> Int {
    if let array, let random = array.randomElement() {
        return random ?? Int.random(in: 1...100)
    } else {
        print("Using a random number")
        return Int.random(in: 1...100)
    }
}

// Using guard let
func randomizer5000(in array: [Int?]?) -> Int {
    guard let array = array, let random = array.randomElement() else {
        print("Using a random number")
        return Int.random(in: 1...100)
    }
    
    return random ?? Int.random(in: 1...100)
}


let arr1: [Int]? = [1,2,3]
randomizer3000(in: arr1)
randomizer4000(in: arr1)
randomizer5000(in: arr1)

let arr2: [Int]? = nil
randomizer3000(in: arr2)
randomizer4000(in: arr2)
randomizer5000(in: arr2)
