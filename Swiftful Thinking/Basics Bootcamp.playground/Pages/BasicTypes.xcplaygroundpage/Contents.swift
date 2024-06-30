import Foundation

// MARK: Type: String -> Basic text -
let myFirstItem = "Hello, world!"

// Reference previously created objects
let myTitle = myFirstItem

// MARK: Type: Booleans -> True or False values -
let mySecondItem: Bool = true // Setting an explicit type
let myThirdItem = false // Using type inference

// 🚫 Not use basic types 🚫
// let myFourthItem: String = "true"

// Swift is a type-safe language
let myFifthItem = true
let mySixthItem: String = "Hello, world!"
let mySeventhItem = "Hello, world"

// MARK: Dates
let myFirstDate: Date = Date()

// MARK: Numbers - Int, Double, CGFloat & more -
let myFirstNumber: Int = 1
let mySecondNumber: Double = 1.0
let myThirdNumber: CGFloat = 1.0
// Double and CGFloat are pretty much interchangeable
// Double is mostly for math
// CGFloat is used within UI context
