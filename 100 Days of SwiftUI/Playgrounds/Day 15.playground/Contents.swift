import Cocoa

// MARK: - Variables & Constants -

var name = "Ted"
name = "Rebecca"

let user = "Daphne"
print(user)

// MARK: - Strings -

let actor = "Tom Cruise ✈️"
let quote = "He tapped a sign saying \"Believe\" and walked away."
let movie = """
A day in
the life of an
Apple engineer
"""

print(actor.count)
print(quote.hasPrefix("He"))
print(quote.hasSuffix("Away."))

// MARK: - Int -

let score = 10
let higherScore = score + 10
let halfScore = score / 2

var counter = 10
counter += 5

let number = 120
print(number.isMultiple(of: 3))

let id = Int.random(in: 1...1_000)

// MARK: - Double -

let score2 = 3.0

// MARK: - Booleans -

let goodDogs = true
let gameOver = false
var isSaved = false

isSaved.toggle()

// MARK: - String Interpolation -

let name2 = "Taylor"
let age = 26
let message = "I'm \(name2) and I'm \(age) years old"

// MARK: - Arrays -

var colors = ["Red", "Green", "Blue"]
let numbers = [4, 8, 15, 16]
var readings = [0.1, 0.5, 0.8]

print(colors[0])
print(readings[2])

colors.append("Tartan")
colors.remove(at: 0)
print(colors.count)

print(colors.contains("Octarine"))

// MARK: - Dictionaries -

let employee = [
    "name": "Taylor",
    "job" : "Singer"
]

print(employee["job", default: "Unknown"])

// MARK: - Sets -

var numbers2 = Set([1, 1, 3, 5, 7, 9])
print(numbers2)

numbers2.insert(10)
numbers2.contains(11)

// MARK: - Enum -

enum Weekday {
    case monday, tuesday, wednesday, thursday, friday
}

var day = Weekday.monday
day = .friday

// MARK: - Type Annotation -

var score1: Double = 0

let player: String = "Roy"
let luckyNumber: Int = 13
let pi: Double = 3.141
var isEnabled: Bool = true
var albums: [String] = ["Red", "Fearless"]
let user2: [String: String] = ["id": "@twostraws"]
let books: Set<String> = ["The Bluest Eye", "Foundation"]

var teams: [String] = []
var clues: [String] = []

enum UIStyle {
    case light, dark, system
}

var style: UIStyle = .dark

// MARK: - If, else if, else -

let age2 = 16

if age2 < 12 {
    print("You can't vote")
} else if age2 < 18 {
    print("You can vote soon.")
} else {
    print("you can vote now.")
}

let temp = 26

if temp > 20 || temp < 30 {
    print("It's a nice day.")
}

// MARK: - Switch -

enum Weather {
    case sun, rain, wind
}

let forecast = Weather.sun

switch forecast {
case .sun:
    print("Yay sun")
case .rain:
    print("Bring an umbrella")
default:
    print("It's going to be windy")
}

// MARK: - Ternary -

let age3 = 18
let canVote = age3 >= 18 ? "Yes" : "No"

// MARK: - For Loops -

let platform = ["iOS", "macOS", "tvOS", "watchOS"]

for os in platform {
    print("Swift works on \(os)")
}

for i in 1...12 {
    print("5 x \(i) is \(5 * i)")
}

var lyric = "Haters gonna"

for _ in 1...5 {
    lyric += " hate"
}

print(lyric)

// MARK: - While Loops -

var count = 10

while count > 0 {
    print(count)
    count -= 1
}

print("Go!")

let files = ["me.jpg", "work.txt", "sophie.jpg"]

for file in files {
    if file.hasSuffix(".jpg") == false {
        continue
    }
    
    print("Found picture: \(file)")
}

// MARK: - Functions -

func printTimesTable(number: Int) -> Void {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTable(number: 8)

func rollDice() -> Int {
    return Int.random(in: 1...6)
}

let result = rollDice()
print(result)

// MARK: - Tupels -

func getUser() -> (firstName: String, lastName: String) {
    ("Taylor", "Swift")
}

let user3 = getUser()
print("Name: \(user3.firstName) \(user3.lastName)")

let (firstName, _) = getUser()
print("Name: \(firstName)")

// MARK: - Parameter Labels -

func isUppercase(_ string: String) -> Bool {
    return string == string.uppercased()
}

let string = "HELLO WORLD"
let result2 = isUppercase(string)

func printTimesTable2(for number: Int) -> Void {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTable2(for: 8)

// MARK: - Default Values for Parameters -

func greet(_ person: String, formal: Bool = false) {
    if formal {
        print("Welcome, \(person)")
    } else {
        print("Hi, \(person)")
    }
}

greet("Tim", formal: true)
greet("Taylor")

// MARK: - Errors in Functions -

enum PasswordError: Error {
    case short, obvious
}

func checkPassword(_ password: String) throws -> String {
    if password.count < 5 {
        throw PasswordError.short
    } else if password == "12345" {
        throw PasswordError.obvious
    } else if password.count < 10 {
        return "Ok"
    } else {
        return "Good"
    }
}


do {
    let result3 = try checkPassword("12345")
} catch PasswordError.obvious {
    print("I have the same combination on my luggage")
} catch {
    print("There was an error.")
}

// MARK: - Closures -

let sayHello = { (name: String) -> String in
    return "Hi, \(name)"
}

sayHello("Emily")

let team = ["Gloria", "Suzanne", "Tiffany", "Tasha"]

let onlyT = team.filter { $0.hasPrefix("T") }

print(onlyT)

// MARK: - Closure Shorthand -

// Check condensed code above 👆

// MARK: - Structs -

struct Album {
    let title: String
    let artist: String
    var isReleased = true

    func printSummary() -> Void {
        print("\(title) by \(artist)")
    }
    
    mutating func removeFromSale() -> Void {
        isReleased = false
    }
}

let red = Album(title: "Red", artist: "Taylor Swift")
print(red.title)
red.printSummary()

// MARK: - Computed Properties -

struct Employee {
    let name: String
    var vacationAllowed = 14
    var vacationTaken = 0
    
    var vacationRemaining: Int {
        get {
            vacationAllowed - vacationTaken
        }
        set {
            vacationAllowed = vacationTaken + newValue
        }
    }
}

// MARK: - Property Observers -

struct Game {
    var score = 0 {
        didSet {
            print("Score changed to \(score)")
        }
    }
}

var game = Game()
game.score += 10
game.score -= 3

// MARK: - Initializers -

struct Player {
    let name: String
    let number: Int
    
    init(name: String) {
        self.name = name
        number = Int.random(in: 1...100)
    }
}

// MARK: - Access Control -

struct BankAccount {
    private(set) var funds = 0
    
    mutating func deposit(amount: Int) -> Void {
        funds += amount
    }
    
    mutating func withdraw(amount: Int) -> Bool {
        if funds > amount {
            funds -= amount
            return true
        } else {
            return false
        }
    }
}

let account = BankAccount(funds: 100)
print(account.funds)
// accounts.funds = 1000 can't be set because of private(set)

// MARK: - Static Properties and Methods -

struct AppData {
    static let version = "1.3 Beta 2"
    static let settingsFile = "settings.json"
}

print(AppData.version)

// MARK: - Classes -

class Employee2 {
    let hours: Int
    
    init(hours: Int) {
        self.hours = hours
    }
    
    func printSummary() {
        print("I work \(hours)")
    }
}

class Developer: Employee2 {
    func work() {
        print("I'm coding for \(hours) hours a day")
    }
    
    override func printSummary() {
        print("I spent \(hours) hours a day fighting over tabs vs spaces.")
    }
}

let novall = Developer(hours: 8)
novall.work()
novall.printSummary()

class Vehicle {
    let isElectric: Bool
    
    init(isElectric: Bool) {
        self.isElectric = isElectric
    }
}

class Car: Vehicle {
    let isConvertible: Bool
    
    init(isElectric: Bool, isConvertible: Bool) {
        self.isConvertible = isConvertible
        super.init(isElectric: isElectric)
    }
}

class Actor {
    var name = "Nicolas Cage"
}

var actor1 = Actor()
var actor2 = actor1
actor2.name = "Tom Cruise"
print(actor1.name)
print(actor2.name)

class Site {
    let id: Int
    
    init(id: Int) {
        self.id = id
        print("Site \(id): I've been created")
    }
    
    deinit {
        print("Site \(id): I've been destoryed")
    }
}

for i in 1...3 {
    let site = Site(id: i)
    print("Site \(site.id): I'm in control!")
}


class Singer {
    var name = "Adele"
}

let singer = Singer()
singer.name = "Justin"
print(singer.name)

// MARK: - Protocols -

protocol Vehicle2 {
    var name: String { get }
    var currentPassengers: Int { get set }
    
    func estimateTime(for distance: Int) -> Int
    func travelDistance(distance: Int)
}

// If using sub classes put classes first then protocols after the fact
struct Car2: Vehicle2 {
    let name = "Car"
    var currentPassengers = 1
    
    func estimateTime(for distance: Int) -> Int {
        distance / 50
    }
    
    func travelDistance(distance: Int) {
        print("I'm driving \(distance) miles")
    }
    
    func openSunroof() {
        print("It's a nice day!")
    }
}

func commute(distance: Int, using vehicle: Vehicle2) {
    if vehicle.estimateTime(for: distance) > 100 {
        print("Too slow!")
    } else {
        vehicle.travelDistance(distance: distance)
    }
}

let car2 = Car2()
commute(distance: 100, using: car2)

// MARK: - Extensions -

extension String {
    func trimmed() -> String {
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
    mutating func trim() {
        self = self.trimmed()
    }
    
    var lines: [String] {
        self.components(separatedBy: .newlines)
    }
}

var quote2 = "    THE truth is rarely pure and never simple   "
quote2.trim()

let lyrics = """
But I keep cruising
Can't stop, won't stop moving
"""

print(lyrics.lines.count)

// MARK: - Protocol Extensions -

extension Collection {
    var isNotEmpty: Bool {
        isEmpty == false
    }
}

let guests = ["Mario", "Luigi", "Peach"]

if guests.isNotEmpty {
    print("Guess count: \(guests.count)")
}

// MARK: - Optionals -

let opposites = [
    "Mario": "Wario",
    "Luigi": "Waluigi"
]

let peachOpposite = opposites["Peach"]
if let marioOpposite = opposites["Mario"] {
    print("Mario's opposite is \(marioOpposite)")
}

// MARK: - Guard Let -

func printSquare(of number: Int?) {
    guard let number = number else {
        print("Missing input")
        return // Return has to be here to exit the current scope
    }
    
    print("\(number) x \(number) is \(number * number)")
}

// MARK: - Nil Coalescing Operator -

let tvShows = ["Archer", "Babylon 5", "Ted Lasso"]
let favorite = tvShows.randomElement() ?? "None"

let input = ""
let number3 = Int(input) ?? 0

// MARK: - Optional Chaining -

let names = ["Arya", "Bran", "Robb", "Sansa"]
let chosen = names.randomElement()?.uppercased() ?? "No one"
print("Next in line: \(chosen)")

// MARK: - Optional Try -

enum UserError: Error {
    case badID, networkFailed
}

func getUser2(id: Int) throws -> String {
    throw UserError.networkFailed
}

if let user3 = try? getUser2(id: 23) {
    print("User: \(user3)")
}
