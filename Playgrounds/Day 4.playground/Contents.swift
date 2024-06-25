import Cocoa

// MARK: Type annotations
let surname: String = "Lasso"
var score: Double = 0

let playerName: String = "Roy"
let luckyNumber: Int = 13
let pi: Double = 3.141
let isAuthenticated: Bool = true
var albums: [String] = ["Red", "Fearless"]
var users: [String: String] = ["id": "nicjrich"]
var books: Set<String> = Set([
    "The Bluest Eye",
    "Foundation",
    "Girl, Woman, Other"
])


var soda: [String] = ["Coke", "Pepsi", "Irn-Bru"]
var teams: [String] = [String]()
var cities: [String] = []
var clues = [String]()

enum UIStyle {
    case light, dark, system
}

var style = UIStyle.light
style = .dark

let username: String
// Lots of complex logic
username = "@nicjrich"
// More stuff here
print(username)
