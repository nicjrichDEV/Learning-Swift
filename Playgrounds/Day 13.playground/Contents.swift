import Cocoa

// MARK: Creating and using protocols
// Creates a blueprint of required properties and methods
protocol Vehicle {
    var name: String { get }
    var currentPassengers: Int { get set }
    
    func estimateTime(for distance: Int) -> Int
    func travel(distance: Int)
}

protocol CanBeElectric {
    var isElectic: Bool { get }
}

struct Car: Vehicle, CanBeElectric {
    let name = "Car"
    var currentPassengers = 1
    var isElectic = false
    
    // Required by Vehicle protocol
    func estimateTime(for distance: Int) -> Int {
        distance / 50
    }
    
    // Required by Vehicle protocol
    func travel(distance: Int) {
        print("I'm driving \(distance) miles")
    }
    
    // Custom method on car
    func openSunroof() {
        print("It's a nice day")
    }
}

struct Bicycle: Vehicle {
    let name = "Bicycle"
    var currentPassengers = 1
    
    func estimateTime(for distance: Int) -> Int {
        distance / 10
    }
    
    func travel(distance: Int) {
        print("I'm cycling \(distance) miles")
    }
}

func commute(distance: Int, using vehicle: Vehicle) {
    if vehicle.estimateTime(for: distance) > 100 {
        print("That's too slow! I'll try a different vehicle")
    } else {
        vehicle.travel(distance: distance)
    }
}

func getTravelEstimates(using vehicles: [Vehicle], distance: Int) {
    for vehicle in vehicles {
        let estimate = vehicle.estimateTime(for: distance)
        print("\(vehicle.name): \(estimate) hours to travel \(distance) miles")
    }
}

let car = Car()
commute(distance: 100, using: car)

let bike = Bicycle()
commute(distance: 50, using: bike)

getTravelEstimates(using: [car, bike], distance: 150)

// MARK: Using opaque return types
func getRandomNumber() -> some Equatable {
    Double.random(in: 1...6)
}

func getRandomBool() -> some Equatable {
    Bool.random()
}

print(getRandomNumber() == getRandomNumber())
let num = getRandomNumber()

// MARK: Creating and using Extensions
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

var quote = "    The truth is rarely pure and never simple   "
let trimmed = quote.trimmingCharacters(in: .whitespacesAndNewlines)
quote.trim()

let lyrics = """
But I keep cruising
Can't stop, won't stop moving
It's like I got this music in my mind
Saying it's gonna be alright
"""
print(lyrics.lines.count)

struct Book {
    let title: String
    let pageCount: Int
    let readingHours: Int
}

extension Book {
    init(title: String, pageCount: Int) {
        self.title = title
        self.pageCount = pageCount
        self.readingHours = pageCount / 50
    }
}

let lotr = Book(title: "Lord of the Rings", pageCount: 1178)
let theAmericans = Book(title: "The Americans", pageCount: 1200, readingHours: 80)


extension String {
    func isUppercased() -> Bool {
        return self == self.uppercased()
    }
}

// MARK: Protocol Extensions
extension Collection {
    var isNotEmpty: Bool {
        isEmpty == false
    }
}

let guests = ["Mario", "Luigi", "Peach"]

if guests.isNotEmpty {
    print("Guest count: \(guests.count)")
}

protocol Person {
    var name: String { get }
    func sayHello()
}

extension Person {
    func sayHello() {
        print("Hi, I'm \(name)")
    }
}

struct Employee: Person {
    let name: String
}

let taylor = Employee(name: "Taylor Swift")
taylor.sayHello()
