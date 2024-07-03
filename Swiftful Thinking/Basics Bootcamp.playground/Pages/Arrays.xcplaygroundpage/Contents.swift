
import Foundation

// MARK: - Arrays & Sets -

var myTitle = "Hello, World!"
var myTitle2 = "Hello, world again!"

// Tuple
func doSomething(value: (title1: String, title2: String)) {
    
}

doSomething(value: (myTitle, myTitle2))

// Custom Data Model
struct TitlesModel {
    let title1: String
    let title2: String
}

func doSomething(value: TitlesModel) {
    
}

doSomething(value: TitlesModel(title1: myTitle, title2: myTitle2))

// MARK: - Creating Arrays -

let apple = "Apple"
let orange = "Orange"

let fruits1 = ["Apple", "Orange"]
let fruits2 = [apple, orange]

let myBools = [true, false, true, true, true, false]

func doSomething(value: [String]) {
    for fruit in value {
        print(fruit)
    }
}

doSomething(value: fruits1)

var fruitsArray = ["Apple", "Orange", "Banana", "Mango"]
let count = fruitsArray.count
let firstItem = fruitsArray.first
let lastItem = fruitsArray.last

// Unwrap optional String
if let firstItem {
    print(firstItem)
}

// Unwrap optional String
if let lastItem {
    print(lastItem)
}

fruitsArray.append("Banana")
fruitsArray.append("Mango")
fruitsArray.append(contentsOf: ["Waffles", "Pancakes"])

// Subscript to target a specific index
print(fruitsArray[4]) // Unsafe

if fruitsArray.indices.contains(4) { // Safe way
    let item = fruitsArray[4]
}

fruitsArray.insert("Watermelon", at: 2)
print(fruitsArray)

fruitsArray.remove(at: 2)
print(fruitsArray)

fruitsArray.removeAll()
print(fruitsArray)

// MARK: - Arrays with custom types -

struct ProductModel {
    let title: String
    let price: Int
}

var myProducts = [
    ProductModel(title: "Product 1", price: 50),
    ProductModel(title: "Product 2", price: 5),
    ProductModel(title: "Product 3", price: 24),
    ProductModel(title: "Product 4", price: 52),
    ProductModel(title: "Product 5", price: 50),
    ProductModel(title: "Product 6", price: 50),
    ProductModel(title: "Product 7", price: 50),
]

// MARK: - Sets -
var finalFruits = ["Apple", "Orange", "Banana", "Apple"]
print(finalFruits)

var fruitsSet: Set<String> = ["Apple", "Orange", "Banana", "Apple"]
print(fruitsSet)

// Note: To convert an array to a set do not add the inner []
let arrayToSet = Set(finalFruits)
print(arrayToSet)
