
import Foundation

// "There is always a value and it is a Boolean"
let isBool: Bool = false

// "We don't know if there is a value, but if there is, it's a Boolean"
// Below will display warning
var optBool: Bool? = nil
print(optBool)
optBool = false
print(optBool)
optBool = nil
print(optBool)

// Nil coalescing operator
let newValue: Bool? = optBool

// "The value of "newValue" (if there is one), otherwise false"
let newValue2: Bool = newValue ?? false
print("New value 2: \(newValue2)")

// Note: Any type can be optional in Swift including custom types like structs and classes
var myString: String? = "Hello, world!"
print(myString ?? "There is no value")
myString = "New text!"
print(myString ?? "There is no value")
myString = nil
print(myString ?? "There is no value")

// MARK: - Some functions -

var userIsPremium: Bool? = nil

func checkIfPremium() -> Bool {
    return userIsPremium ?? false
}

checkIfPremium()

// MARK: - Guard & if let statements -

func checkIfPremium2() -> Bool {
    if let userIsPremium {
        // If there is a value do this
        return true
    } else {
        // If there is no value (nil) do this
        return false
    }
}

checkIfPremium2()

// Alternative way to write it without using else
// Might be more preferable since its shorter to read
func checkIfPremium3() -> Bool {
    if let userIsPremium {
        return true
    }
    
    return false
}

// Guard statements
// Basically the inverse of if let
// "Make sure there is a value then continue else exit plan"
// Note: This can use that short syntax as well instead of userIsPremium = userIsPremium
func checkIfPremium4() -> Bool {
    guard let userIsPremium else { return false }
    
    return true
}
