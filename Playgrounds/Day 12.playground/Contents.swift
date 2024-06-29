import Cocoa

// MARK: Creating you own
class Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}

var newGame = Game()
newGame.score += 10

// MARK: Class inheritance
class Employee {
    let hours: Int
    
    init(hours: Int) {
        self.hours = hours
    }
    
    func printSummary() {
        print("I work \(hours) hours a day.")
    }
}

class Developer: Employee {
    func work() {
        print("I'm writing code for \(hours) hours.")
    }
    
    override func printSummary() {
        print("I'm a developer who will sometimes work \(hours) hours a day, but other times will spend hours arguing about whether code should be indented using tabs or spaces.")
    }
}

// Marking a class as final does not allow another class to inherit from it
final class Manager: Employee {
    func work() {
        print("I'm going to meetings for \(hours) hours.")
    }
}



let robert = Developer(hours: 8)
let joseph = Manager(hours: 10)
robert.work()
joseph.work()

let novall = Developer(hours: 8)
novall.printSummary()

// MARK: Initializers for classes
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

let subaru = Car(isElectric: false, isConvertible: false)

// MARK: Copying classes
// Just a reminder that classes are reference types that share a pot of data
class User {
    var username = "Anonymous"
    
    // Creating a method like this allows you to hand make a deep copy of the class so you create a new instance from that deep copy
    func copy() -> User {
        let user = User()
        user.username = username
        return user
    }
}

var user1 = User()
var user2 = user1.copy()
user2.username = "Nick"
print(user1.username)
print(user2.username)

// MARK: De-initializing a class
// You don;t use func with deinitializers
// Never take parameters or return data
// Will be automatically called when the last instance of a class is destroyed
// Never call deinitializers directly
// Structs do not have deninitializers since you can't copy them.
class AnotherUser {
    let id: Int
    
    init(id: Int) {
        self.id = id
        print("User \(id): I'm alive!")
    }
    
    // This only runs when the last instance of the class is destroyed
    deinit {
        print("User \(id): I'm dead!")
    }
}

var someUsers: [AnotherUser] = []

for i in 1...3 {
    let user = AnotherUser(id: i)
    print("User \(user.id): I'm in control!")
    someUsers.append(user)
}

print("Loop is finished!")
someUsers.removeAll()
print("Array is clear")

// MARK: Working with variables inside classes
class User3 {
    var name = "Nick"
}

var user3 = User3()
user3.name = "Emily"
user3 = User3()
print(user3.name)
