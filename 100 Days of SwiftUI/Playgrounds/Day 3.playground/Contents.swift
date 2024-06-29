import Cocoa

// MARK: Arrays
var beatles = ["John", "Paul", "George", "Ringo"] // Strings
let numbers = [4, 8, 16, 23, 32] // Ints
var temperatures = [25.3, 28.2, 26.4] // Doubles

print(beatles[2])
print(numbers[1])
print(temperatures[2])

beatles.append("Adrian")
beatles.append("Allen")
beatles.append("Adrian")
beatles.append("Novall")
beatles.append("Vivian")

var scores = Array<Int>()
scores.append(100)
scores.append(80)
scores.append(85)
print(scores[1])

var albums = [String]() // Prefer to set type using the shorthand instead of above
albums.append("Folklore")
albums.append("Fearless")
albums.append("Red")
print(albums.count)
albums.remove(at: 2)
print(albums)

var characters = ["Lana", "Pam", "Ray", "Sterling"]
print(characters.count)
characters.remove(at: 2)
print(characters.count)
characters.removeAll()
print(characters)

let bondMovies = ["Casino Royale", "Spectre", "Skyfall", "No Time to Die"]
print(bondMovies.contains("Frozen"))

let cities = ["London", "Tokyo", "Rome", "Budapest"]
print(cities.sorted())
print(cities.reversed())

let presidents = ["Bush", "Obama", "Trump", "Biden"]
let reversedPresidents = presidents.reversed()
print(reversedPresidents)

// MARK: Dictionaries
var employee = ["Taylor Swift", "Singer", "Nashville"]
print("Name: \(employee[0])")
print("Job Title: \(employee[1])")
print("Location: \(employee[2])")

// If you us arrays its hard to know for certain if the data is going to be there. 
// Instead we use Dictionaries to create key value pairs
let employee2 = [
    "name"    : "Taylor Swift",
    "job"     : "Singer",
    "location": "Nashville"
]
print()
print(employee2["name", default: "Unknown"])
print(employee2["job", default: "Unknown"])
print(employee2["location", default: "Unknown"])

let hasGraduated = [
    "Eric": false,
    "Maeve": true,
    "Otis": false
]


let olympics = [
    2012: "London",
    2016: "Rio de Janeiro",
    2021: "Tokyo"
]


print(olympics[2012, default: "Unknown"])


// Creating an empty dictionary
var heights = [String: Int]()
heights["Yao Ming"] = 229
heights["Shaquille O'Neal"] = 216
heights["LeBron James"] = 206

var archEnemies = [String: String]()
archEnemies["Batman"] = "The Joker"
archEnemies["Superman"] = "Lex Luthor"
archEnemies["Batman"] = "Penguin"

// MARK: Sets
// Don't remember the order of items and don't allow duplicates. They are super fast
// Similar structure to arrays but no duplicate allows
let actors = Set([
    "Denzel Washington",
    "Tom Cruise",
    "Nicolas Cage",
    "Samuel L Jackson"
])
print(actors)

var someActors = Set<String>()
someActors.insert("Denzel Washington")
someActors.insert("Tom Cruise")
someActors.insert("Nicolas Cage")
someActors.insert("Samuel L Jackson")
print(someActors)

// MARK: Enums
var selected = "Monday"
selected = "Tuesday"
selected = "January"
selected = "Friday "

enum Weekday {
    case Monday, Tuesday, Wednesday, Thursday, Friday
}

var day = Weekday.Monday
day = .Tuesday
day = .Wednesday
day = .Thursday
