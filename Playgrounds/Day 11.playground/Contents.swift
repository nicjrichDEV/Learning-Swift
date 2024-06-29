import Cocoa

// MARK: Access control to limit data access
struct BankAccount {
    // Private: Don't let anything outside the struct use this.
    // File Private: Don't let anything outside the current file use this.
    // Public: Let anyone, anywhere use this.
    // Private(Set): Let anyone read this property, only internal methods can write to it
    private(set) var funds = 0
    
    mutating func deposit(amount: Int) {
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

var account = BankAccount()
account.deposit(amount: 100)

let success = account.withdraw(amount: 200)

if success {
    print("Withdrew money successfully")
} else {
    print("Failed to get the money")
}

account.deposit(amount: 200)
print(account.funds)

// MARK: Static properties and methods
// self: The current value of a struct | 55, "Hello", true <- Notice that values are lowercase
// Self: The current type of struct | Int, String, Bool <- Notice that types are capital
struct School {
    static var studentCount = 0
    
    static func add(student: String) {
        print("\(student) joined the school")
        studentCount += 1
    }
    
}

School.add(student: "Taylor Swift")
School.add(student: "Emily Richardson")
print(School.studentCount)

// Great way to used with Fixed data
struct AppData {
    static let version = "1.3 beta 2"
    static let saveFilename = "settings.json"
    static let homeURL = "https://www.hackingwithswift.com"
}

print(AppData.version)

// Another use case is sample data
struct Employee {
    let username: String
    let password: String
    
    static let example = Employee(username: "nicjrich", password: "SophiePomPom")
}


print(Employee.example)


struct Amplifier {
    static let maximumVolume = 11
    var currentVolume: Int
}

struct Question {
    static let answer = 42
    var questionText = "Unknown"
    
    init(questionText: String, answer: String) {
        self.questionText = questionText
    }

}

struct Cat {
    static var allCats = [Cat]()
    init() {
        Cat.allCats.append(self)
    }
    static func chorus() {
        for _ in allCats {
            print("Meow!")
        }
    }
}

struct Raffle {
    static var ticketsUsed = 0
    var name: String
    var tickets: Int
    
    init(name: String, tickets: Int) {
        self.name = name
        self.tickets = tickets
        Raffle.ticketsUsed += tickets
    }
}
