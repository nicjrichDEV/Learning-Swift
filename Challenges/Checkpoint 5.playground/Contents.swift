import Cocoa

// MARK: Written out version
// Starting information
let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]

// Filter out evens using filter closure
// Written out version. See condensed below
let filteredEvens = luckyNumbers.filter { a in
    if a.isMultiple(of: 2) {
        return false
    } else {
        return true
    }
}

// Sort filteredEvens in ascending order
let sort = filteredEvens.sorted()

// Map values to a String declaring each "is a lucky number"
// Written out version. See condensed below
let mapped = sort.map { a in
    "\(a) is a lucky number"
}

// Print out each item in mapped array
for map in mapped {
    print(map)
}

// MARK: Print divider between two options
let divider = String(String(repeating: "-", count: 20))
print("")
print(divider)
print("")

// MARK: Chaining all of the above together
var cleanedData: () = luckyNumbers.filter { $0.isMultiple(of: 2) == false }.sorted().map { "\($0) is a lucky number" }.forEach { print($0) }

