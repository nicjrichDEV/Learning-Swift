import Cocoa

// MARK: If statements
let score = 85
if score > 80 {
    print("Great job!")
}

let speed = 88
let percentage = 85
let age = 18

if speed >= 88 {
    print("Where we're going, we don't need roads.")
}

if percentage < 85 {
    print("Sorry, you failed the test.")
}

if age >= 18 {
    print("You're eligible to vote")
}

let ourName = "Dave Lister"
let friendName = "Arnold Rimmer"

if ourName < friendName {
    print("It's \(ourName) vs \(friendName)")
} else {
    print("It's \(friendName) vs \(ourName)")
}

var numbers = [1,2,3]
numbers.append(4)

if numbers.count > 3 {
    numbers.remove(at: 0)
}

print(numbers)

let country = "Canada"

if country == "Australia" {
    print("G'day!")
}

let name = "Taylor Swift"

if name != "Anonymous" {
    print("Welcome \(name)")
}


var username = "taylorswift13"

if username.isEmpty {
    username = "Anonymous"
}

print("Welcome \(username)")

// MARK: Checking multiple conditions

let anotherAge = 16

if anotherAge >= 18 {
    print("You can vote in the next election.")
} else {
    print("Sorry, you;re too young to vote.")
}

let temp = 25

if temp > 20 && temp < 30 {
    print("It's a nice day.")
}

let userAge = 14
let hasParentalConsent = true

if userAge >= 18 || hasParentalConsent {
    print("You can buy the game")
}

enum TransportOption {
    case airplane, helicopter, bicycle, car, escooter
}

let transport = TransportOption.airplane

if transport == .airplane || transport == .helicopter {
    print("Let's fly")
} else if transport == .bicycle {
    print("I hope there's a bike path")
} else if transport == .car {
    print("Time to get stuck in traffic.")
} else {
    print("GO ONWARD SCOTBOY!")
}

// MARK: Switch statements
enum Weather {
    case sun, rain, wind, snow, unknown
}

let forecast = Weather.rain

switch forecast {
case .sun:
    print("WOOO nice and sunny")
case .rain:
    print("Bring an umbrella")
case .wind:
    print("Be careful its really windy outside")
case .snow:
    print("Make sure to bring a warm coat")
case .unknown:
    print("We don't know what the weather is like right now check back latter")
}


let place = "Metropolis"

switch place {
case "Gotham":
    print("You're Batman!")
case "Mega-City One":
    print("You're Judge Dredd!")
case "Wakanda":
    print("You're Black Panther!")
default:
    print("Who are you?")
}


let day = 5
print("My true love game to me...")

switch day {
case 5:
    print("5 golden rings")
    fallthrough
case 4:
    print("4 calling birds")
    fallthrough
case 3:
    print("3 French hens")
    fallthrough
case 2:
    print("2 turtle doves")
    fallthrough
default:
    print("A partridge in a pear tree")
}

// MARK: Ternary operator
let thirdAge = 18
let canVote = thirdAge >= 18 ? "Yes" : "No"

let hour = 23
print(hour < 12 ? "It's before noon" : "It's after noon")

let moreNames = ["Jane", "Kaylee", "Mal"]
let crewCount = moreNames.isEmpty ? "No one" : "\(moreNames.count) people"

enum Theme {
    case light, dark
}

let theme = Theme.dark
let background = (theme == .dark) ? "Black" : "White"
