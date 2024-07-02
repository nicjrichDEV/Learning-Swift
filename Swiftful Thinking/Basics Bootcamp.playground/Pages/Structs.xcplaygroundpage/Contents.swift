
import Foundation

// Structs are fast
// Structs are stored in the Stack
// Objects in the Stack are Value types
// Value types are copied and mutated

struct Quiz {
    let title: String
    let dateCreated: Date
    let isPremium: Bool?
    
    // Structs have an implicit init
    // Compiler automatically generates a member wise initializer
    // But you can create your own
    
//    init(title: String, dateCreated: Date = .now) {
//        self.title = title
//        self.dateCreated = dateCreated
//    }
    
    init(title: String, dateCreated: Date?, isPremium: Bool?) {
        self.title = title
        self.dateCreated = dateCreated ?? .now
        self.isPremium = isPremium
    }
    
}

let myObject: String = "Hello"

let myQuiz = Quiz(title: "Quiz", dateCreated: nil, isPremium: true)

print(myQuiz.title)
print(myQuiz.dateCreated.description(with: .autoupdatingCurrent))

// MARK: - Mutating a Struct -
// "Immutable Struct" = All "let" constants meaning you can not mutate it!
struct UserModel {
    let name: String
    let isPremium: Bool
}

var user1 = UserModel(name: "Nick", isPremium: false)

func markUserAsPremium() {
    print(user1)
    user1 = UserModel(name: user1.name, isPremium: true)
    print(user1)
}

markUserAsPremium()

// MARK: - Mutable Struct -
// Note: The var makes this a mutable struct!

struct UserModel2 {
    let name: String
    var isPremium: Bool
}

var user2 = UserModel2(name: "Nick", isPremium: false)

func markUserAsPremium2() {
    print(user2)
    // "mutating" the struct which is the same as above
    user2.isPremium.toggle()
    print(user2)
}

markUserAsPremium2()

// MARK: - Version 3 -
// Moving the function inside

struct UserModel3 {
    let name: String
    let isPremium: Bool
    
    // Bit better coding practice since the struct is changing its own data
    func markUserAsPremium(newValue: Bool) -> UserModel3 {
        return UserModel3(name: name, isPremium: newValue)
    }
}

var user3 = UserModel3(name: "Nick", isPremium: true)
user3.markUserAsPremium(newValue: false)

// MARK: - Version 4 mutable -

struct UserModel4 {
    let name: String
    private(set) var isPremium: Bool // Can only set value of isPremium within the Struct
    
    mutating func updateIsPremium(newValue: Bool) {
        isPremium = newValue
    }
}

var user4 = UserModel4(name: "Nick", isPremium: false)
user4.updateIsPremium(newValue: true)
user4.isPremium // Note that you can read but can not write to isPremium outside of Struct

struct User5 {
    let name: String
    let isPremium: Bool
    let isNew: Bool
    //
    //
    // As many properties as you want
}
