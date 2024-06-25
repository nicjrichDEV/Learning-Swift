import Cocoa

// MARK: Providing default parameters to functions
func printTimesTables(for number: Int, end: Int = 12) {
    for i in 1...end {
        print("\(i) x \(number) is: \(i * number)")
    }
}

printTimesTables(for: 5)
printTimesTables(for: 5, end: 20)

var characters = ["Lana", "Ray", "Pam", "Sterling"]
print(characters.count)
characters.removeAll(keepingCapacity: true)
print(characters.count)

// MARK: Handling errors within functions
enum PasswordError: Error {
    case short, obvious
}

func checkPassword(_ password: String) throws -> String {
    // Error checking
    if password.count < 5 {
        throw PasswordError.short
    } else if password == "12345" {
        throw PasswordError.obvious
    }
    
    // Happy state logic
    if password.count < 8 {
        return "OK"
    } else if password.count < 10 {
        return "Good"
    } else {
        return "Excellent"
    }
}

do {
   try checkPassword("SophiePomPom")
} catch PasswordError.short {
    print("Your password is too short, try again")
} catch PasswordError.obvious {
    print("You password is super obvious, try again")
} catch {
    print("We encountered an error while processing your password \(error.localizedDescription)")
}
