import Foundation

var username = "Hello"
var premiumUser = false
var newUser = true


func getUsername() -> String {
    return username
}

func premiumMember() -> Bool {
    return premiumUser
}

// Tuples can combine multiple pieces of data
func getUserInfo() -> (name: String, premiumUser: Bool) {
    let name = getUsername()
    let premiumMember = premiumMember()
    
    return (name, premiumMember)
}

var userData1 = username
var userData2: (String, Bool, Bool) = (username, premiumUser, newUser)

let info1 = getUserInfo()
let name1 = info1.name
let premiumMember1 = info1.premiumUser
