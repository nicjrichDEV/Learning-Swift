
import Foundation

// "There is always a value and it is a Boolean"
let isBool: Bool = false

// "We don't know if there is a value, but if there is, it's a Boolean"
// Below will display warning
var optBool: Bool?
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

var userIsPremium: Bool?

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
// When if let is successful enter the closure
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
// When the guard let fails then enter the closer
func checkIfPremium4() -> Bool {
    guard let userIsPremium else { return false }

    return true
}

// MARK: - Unwrapping Optionals -

// Three ways to unwrap an options
// 1. Nil Coalescing
// 2. If Let
// 3. Guard Let
// 4. Optional Chaining

// Below contains more complex examples
var userIsNew: Bool? = true
var userDidCompleteOnboarding: Bool? = false
var userFavoriteMovie: String?

// Function that does not accept optionals
func getUserStatus(userIsNew: Bool, userDidCompleteOnboarding: Bool, userFavoriteMovie: String) -> Bool {
    if userIsNew && userDidCompleteOnboarding {
        return true
    }

    return false
}

// If Let
func checkIfUserIsSetup() -> Bool {
    if let userIsNew, let userDidCompleteOnboarding, let userFavoriteMovie {
        return getUserStatus(userIsNew: userIsNew, userDidCompleteOnboarding: userDidCompleteOnboarding, userFavoriteMovie: userFavoriteMovie)
    } else {
        return false
    }
}

// Same as above using guard let
func checkIfUserIsSetup2() -> Bool {
    guard let userIsNew, let userDidCompleteOnboarding, let userFavoriteMovie else { return false }

    return getUserStatus(
        userIsNew: userIsNew,
        userDidCompleteOnboarding: userDidCompleteOnboarding,
        userFavoriteMovie: userFavoriteMovie
    )
}

// Layered check using if let 🚫 Do not do this 🚫
func checkIfUserIsSetup3() -> Bool {
    if let userIsNew {
        if let userDidCompleteOnboarding {
            userIsNew // Notice this is no longer an optional
            if let userFavoriteMovie {
            } else {
                return false
            }

        } else {
            return false
        }
    }

    return false
}

func checkIfUserIsSetup4() -> Bool {
    guard let userIsNew else { return false }
    guard let userDidCompleteOnboarding else { return false }
    guard let userFavoriteMovie else { return false }

    return getUserStatus(userIsNew: userIsNew, userDidCompleteOnboarding: userDidCompleteOnboarding, userFavoriteMovie: userFavoriteMovie)
}

// MARK: - Optional Chaining -

func getUsername() -> String? {
    return "test"
}

func getTitle() -> String {
    return "title"
}

func getUserData() {
    let username = getUsername()
    // Will get the count if the username is not nil
    let count: Int = username?.count ?? 0
    
    let title = getTitle()
    let count2 = title.count
    
    // Example of chaining multipole optionals together
    let firstCharacterIsLowercased = username?.first?.isLowercase ?? false
    
    
    // MARK: - Un-safely Unwrapping an Optional AKA explicit unwrapping -
    // The ! forces unwrapping
    // If this is nil it will crash your app 😭
    // Only use if you know 100% if the value is not nil
    let count3: Int = username!.count
    
}
