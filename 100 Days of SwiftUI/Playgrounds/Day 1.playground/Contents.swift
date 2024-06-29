import Cocoa

var greeting = "Hello, playground"

// Variables
var name = "Ted"
name = "Rebecca"
name = "Keeley"

// Constants
let character = "Daphne"

// Print examples
var playerName = "Roy"
print(playerName)

playerName = "Dani"
print(playerName)

playerName = "Sam"
print(playerName)

let managerName   = "Michael Scott"
let dogBreed      = "Pomeranian"
let meaningOfLife = "How many roads must a man walk down?"

// How to create strings
let actor = "Denzel Washington"
let filename = "paris.jpg"
let result = "⭐️ You win! ⭐️"

// Escaping characters
let quote = "Then he tapped a sign saying \"Believe\" and walked away"

// Multiline Strings
// Triple quotes must be on their own lines
let movie = """
A day in
the life of an
Apple engineer
"""

// Character count
let nameLength = actor.count
print(nameLength)

// Uppercased
print(result.uppercased())

// Has prefix
print(movie.hasPrefix("A day"))

// Has suffix
print(filename.hasSuffix(".jpg"))

// Ints
let score = 10
let reallyBig = 100_000_000

let lowerScore = score - 2
let higherScore = score + 2
let doubledScore = score * 2
let squaredScore = score * score
let halvedScore = score / 2

var counter = 10
counter += 5 // Compound assignment operators
print(counter)

counter *= 2
counter -= 10
counter /= 2

let number = 120
print(number.isMultiple(of: 3))
print(120.isMultiple(of: 3))

// Doubles
let anotherNumber = 0.1 + 0.2
print(anotherNumber)

let a = 1
let b = 2.0
let c = Double(a) + b

let double1 = 3.1
let double2 = 3131.3131
let double3 = 3.0
let int1 = 3

var anotherName = "Nicolas Cage"
anotherName = "John Travolta"

// Can't change type string to int
// anotherName = 57

var rating = 5.0
rating *= 2


