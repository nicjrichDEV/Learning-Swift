import Cocoa

// MARK: - Handling missing data with Optionals -

let opposites = ["Mario": "Wario", "Luigi": "Waluigi"]
let peachOpposite = opposites["Peach"]

if let marioOpposite = opposites["Mario"] {
    print("Mario's opposite is \(marioOpposite)")
} else {
    print("Nothing found")
}

var username: String? = nil

if let unwrappedName = username {
    print("We got a user: \(unwrappedName)")
} else {
    print("The optional was empty")
}

var num1 = 1_000_000
var num2 = 0
var num3: Int? = nil

var srt1 = "Hello"
var str2 = ""
var str3: String? = nil

var arr1 = [0]
var arr2: [Int] = []
var arr3: [Int]? = nil

func square(number: Int) -> Int {
    return number * number
}

var number: Int? = nil

if let number {
    print(square(number: number))
}

// MARK: - Unwrap options with guard -

func printSquare(of number: Int?) {
    guard let number = number else {
        print("Missing input")
        return
    }
    
    print("\(number) x \(number) is \(number * number)")
}

// Basically guard let is the opposite of if let.
// If let runs if theres a value
// Guard let runs if there is NOT a value in the optional which is where the else comes in
// If you use guard swift must exit ASAP and use return

// MARK: - Unwrap options with nil coalescing -

let captains = [
    "Enterprise": "Picard",
    "Voyager"   : "Janeway",
    "Defiant"   : "Sisko"
]

// Can use double ?? to essentially provide a default value if its nil
// Since we are providing a real value "new" is a real String not an Sting?
let new = captains["Serenity"] ?? "N/A"

let tvShows = ["Archer", "Babylon 5", "Ted Lasso"]
let favorite = tvShows.randomElement() ?? "None"

struct Book {
    let title: String
    let author: String?
}

let book = Book(title: "Beowulf", author: nil)
let author = book.author ?? "Anonymous"
print(author)

let input = ""
let number2 = Int(input) ?? 0
print(number2)

var bestPony: String? = "Pinkie Pie"
let selectedPony: String? = bestPony ?? nil

// MARK: - Handling multiple optionals using optional chaining -

let names = ["Arya", "Bran", "Robb", "Sansa"]
let chosen = names.randomElement()?.uppercased() ?? "No one"
// Treat .randomElement()? as "If the optional has value inside, unwrap it then..."
// If the optional has no value inside it will send nil which then goes through nil coalescing
print("Next in line: \(chosen)")

struct Book2 {
    let title: String
    let author: String?
}

var book2: Book2? = nil
let author2 = book2?.author?.first?.uppercased() ?? "A"
print(author2)

let songs: [String]? = []
let finalSong = songs?.last?.uppercased()

// MARK: - Handle function failure with optionals -

enum UserError: Error {
    case badID, networkFailed
}

func getUser(id: Int) throws -> String {
    throw UserError.networkFailed
}

if let user = try? getUser(id: 23) {
    print("User: \(user)")
}

// This breaks the playground for some reason lol
//guard let user = try? getUser(id: 23) else { throw UserError.networkFailed }
//print("User: \(user)")

// Using Nil coalescing
let user2 = (try? getUser(id: 23)) ?? "Anonymous"
