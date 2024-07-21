import Foundation

// Constant -> The value can not change once its set
let someConstants: Bool = true

// Variable -> The value of this can change
var someVariable: Bool = true

// someConstants = false
someVariable = false


var myNumber = 1.1234
print(myNumber)
myNumber = 2
print(myNumber)
myNumber = 234870234
print(myNumber)
myNumber = 1
print(myNumber)
myNumber = 458

// If statements
var userIsPremium: Bool = true

// Longform
if userIsPremium == true {
    print("1 - User is premium")
} else {
    print("2 - User is NOT premium")
}

// Shorthand
if userIsPremium {
    print("1 - User is premium")
} else {
    print("2 - User is NOT premium")
}
