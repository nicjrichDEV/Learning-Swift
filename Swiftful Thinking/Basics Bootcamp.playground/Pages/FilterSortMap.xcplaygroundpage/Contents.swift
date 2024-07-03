
import Foundation

// MARK: - Filter -

struct DatabaseUser: CustomStringConvertible {
    let name: String
    let isPremium: Bool
    let order: Int
    
    var description: String {
        return "Name: \(name) | Premium: \(isPremium) | Order: \(order)"
    }
}

var allUsers = [
    DatabaseUser(name: "Nick", isPremium: true, order: 4),
    DatabaseUser(name: "Emily", isPremium: false, order: 1),
    DatabaseUser(name: "Samantha", isPremium: true, order: 3),
    DatabaseUser(name: "Joe", isPremium: true, order: 1_000),
    DatabaseUser(name: "Chris", isPremium: false, order: 2),
]

var allPremiumUsers = allUsers.filter { user in
    return user.isPremium
}

var allPremiumUsers2 = allUsers.filter { $0.isPremium }

//for user in allPremiumUsers {
//    if user.isPremium {
//        allPremiumUsers.append(user)
//    }
//}

print(allPremiumUsers)
print(allPremiumUsers2)

// MARK: - Sort -
var orderedUsers = allUsers.sorted { $0.order > $1.order }
orderedUsers.forEach { print($0) }

var userNames = allUsers.map { $0.name }
userNames.forEach { print($0) }
