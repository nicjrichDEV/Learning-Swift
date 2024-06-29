import Cocoa

// MARK: Creating structs
// Create your own custom, complex data types

struct Album {
    let title: String
    let artist: String
    let year: Int
    
    func printSummary() {
        print("\(title) (\(year)) by \(artist)")
    }
}


let red = Album(title: "Red", artist: "Taylor Swift", year: 2012)
let wings = Album(title: "Wings", artist: "BTS", year: 2016)

print(red.title)
print(wings.artist)

red.printSummary()
wings.printSummary()

struct Employee {
    // Properties of the Employee Struct
    let name: String
    var vacationRemaining: Int = 14
    
    // Called a method instead of function
    mutating func takeVacation(days: Int) {
        if vacationRemaining > days {
            vacationRemaining -= days
            print("I'm going on vacation")
            print("Days remaining: \(vacationRemaining)")
        } else {
            print("Oops! There aren't enough days remaining")
        }
    }
}

// Creating an instance of the Employee Struct
// When we first call the Struct we create an initializer, the starting values of the that instance of the Struct
var archer = Employee(name: "Sterling Archer", vacationRemaining: 14)
archer.takeVacation(days: 5)
print(archer.vacationRemaining)

let a = 1
let b = 2.0
let c = Double(a) + b

// Since we set a default value you don't have to specifically init the days
let kane = Employee(name: "Lana Kane")
let poovey = Employee(name: "Pam Poovey", vacationRemaining: 35)

// MARK: Computed property
// The first value structs have is a stored value
// The second is a computed property the recalculates each time its accessed

struct AnotherEmployee {
    let name: String
    var vacationAllocated = 14
    var vacationTaken = 0
    
    var vacationRemaining: Int {
        get {
            vacationAllocated - vacationTaken
        }
        
        set {
            vacationAllocated = newValue
        }
    }
}

var david = AnotherEmployee(name: "David")
david.vacationTaken += 4
david.vacationRemaining = 24
david.vacationTaken
print(david.vacationAllocated)

// Nick messing around.
struct EmployeeVacation {
    let name: String
    var availableDays = 14
    var daysTaken = 0

    
    mutating func takeVacation(days: Int) {
        if days < availableDays {
            availableDays -= days
            daysTaken + days
        } else {
            print("You don't have enough time available")
        }
    }
    
    mutating func increaseVacation(days: Int) {
        availableDays += days
    }
    
    func summary() {
        print("\(name) has \(availableDays) remaining")
    }
}

var brandon = EmployeeVacation(name: "Brandon")
brandon.takeVacation(days: 4)
brandon.summary()
brandon.takeVacation(days: 11)
brandon.summary()

struct City {
    var population: Int
    var description: String {
        if population < 100_000 {
            return "This is a small city"
        } else if population < 1_000_000 {
            return "This is a medium-sized city."
        } else {
            return "This is a large city."
        }
    }
}


let tokyo = City(population: 12_000_000)
tokyo.description

// MARK: Take action when a property changes
struct Game {
    var score = 0 {
        didSet {
            print("Score is now \(score) | Old score: \(oldValue)")
        }
    }
    
}

var game = Game()
game.score += 10
game.score -= 3
game.score += 1

struct App {
    var contacts = [String]() {
        willSet {
            print("Current value is: \(contacts)")
            print("New value will be: \(newValue)")
        }
        didSet {
            print("There are now \(contacts.count) contacts")
            print("Old value was: \(oldValue)")
        }
    }
}

var app = App()
app.contacts.append("Sophie Richardson")
app.contacts.append("Emily Richardson")
app.contacts.append("Muffin Richardson")

struct AnotherApp {
    var name: String
    var isOnSale: Bool = false {
        didSet {
            if isOnSale {
                print("Go and download my app!")
            } else {
                print("Maybe download it later.")
            }
        }
    }
}


var anotherApp = AnotherApp(name: "PopUpPal")
anotherApp.isOnSale = true

// MARK: Creating custom initializers
// This is using a member wise initializer using a secret automatic initializer
struct Player {
    let name: String
    let number: Int
    
    init(name: String) {
        self.name = name
        number = Int.random(in: 1...99)
    }
    
    init(name: String, number: Int) {
        self.name = name
        self.number = number
    }
}

let player = Player(name: "Megan R")
let player2 = Player(name: "Max Verstappen", number: 1)
player.number
player2.number

struct Employee2 {
    var name: String
    var yearsActive = 0
}

extension Employee2 {
    init() {
        self.name = "Anonymous"
        print("Creating an anonymous employee.")
    }
}

let roslin = Employee2(name: "Laura Roslin")
let anon = Employee2()

struct Dictionary {
    var words = Set<String>()
}
let dictionary = Dictionary()
print(dictionary)
