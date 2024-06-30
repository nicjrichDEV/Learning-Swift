import Foundation

func myFristFunction() {
    print("My first function called")
    mySecondFunction()
    myThirdFunction()
}

func mySecondFunction() {
    print("Second function called")
}

func myThirdFunction() {
    print("Third function called")
}


myFristFunction()


func getUserName() -> String {
    let username = "nicjrich"
    return username
}

func checkIfUserIsPremium() -> Bool {
    return false
}

let username = getUserName()
let status = checkIfUserIsPremium()

// MARK: - DIVIDER -

func showFirstScreen() {
    var userDidCompleteOnboarding = false
    var userProfileIsCreated = true
    let status = checkUserStatus(didCompleteOnboarding: userDidCompleteOnboarding, profileCreated: userProfileIsCreated)
    
    if status {
        print("Moving to second screen")
    } else {
        print("Moving to onboarding")
    }
}

func checkUserStatus(didCompleteOnboarding: Bool, profileCreated: Bool) -> Bool {
    if didCompleteOnboarding && profileCreated {
        return true
    } else {
        return false
    }
}

// MARK: - Control Flow in Functions -

func doSomething() -> String {
    var title: String = "Avengers"
    
    // If its equal to Avengers
    if title == "Avengers" {
        return "Marvel"
    } else {
        return "Not Marvel"
    }
}

func checkForAvengers() -> Bool {
    var title: String = "Avengers"
    
    // Make sure title == "Avengers
    guard title == "Avengers" else {
        print("Not Marvel")
        return false
    }
    
    print("Marvel")
    return true
    
}

doSomething()

// MARK: - Calculated Variables -

let number1 = 5
let number2 = 8

func calculateNumbers(num1: Int, num2: Int) -> Int {
    return num1 + num2
}

calculateNumbers(num1: number1, num2: number2)

// You can do the similar computed property deal outside of structs, and classes, etc...
var calculatedNum: Int {
    return number1 + number2
}

print(calculatedNum)
