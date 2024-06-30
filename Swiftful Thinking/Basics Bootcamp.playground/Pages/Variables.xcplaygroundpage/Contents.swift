import Foundation

let someConstant = true

var someVariable = true

// Can not change the value of a constant
// someConstant = false

someVariable = false

var myNumber = 1.1234
print(myNumber)
myNumber = 2
print(myNumber)
myNumber = 23423523
print(myNumber)

// MARK: If statements -
var userIsPremium = true

if userIsPremium {
    print("Welcome premium user")
} else {
    print("Not Premium")
}

// Using the bang ! to inverse think of reading this as "Not"
if !userIsPremium {
    print("Not Premium")
}
