import Cocoa

// MARK: - Booleans -

let filename = "paris.jpg"
print(filename.hasSuffix(".jpg"))

let number = 120
print(number.isMultiple(of: 3))

let goodDogs = true
let isMultiple = 120.isMultiple(of: 3)

var gameOver = false
print(gameOver)
gameOver.toggle()
print(gameOver)


var isAuthenticated = false
isAuthenticated = !isAuthenticated
print(isAuthenticated)
isAuthenticated = !isAuthenticated
print(isAuthenticated)

// MARK: - Strings -

let firstPart = "Hello, "
let secondPart = "world"
let greeting = firstPart + secondPart

let people = "Haters"
let action = "hate"
let lyric = people + " gonna " + action

// Concatenation is more performance intensive than interpolation
let luggageCode = "1" + "2" + "3" + "4" + "5"

let quote = "Then he tapped a sign saying \"Believe\" and walked away."

// String interpolation
let name = "Taylor"
let age = 26
let message = "Hello, my name is \(name) and I'm \(age) years old."

let missionNumber = 11
let missionMessage = "Apollo " + String(missionNumber) + " landed on the moon."

print("5 x 5 is \(5 * 5)")
