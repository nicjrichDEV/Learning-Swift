import Cocoa

enum RootError: Error {
    case tooLow, tooHigh, notFound
}

func square(_ number: Int) throws -> Int {
    // Error logic
    if (number < 1) {
        throw RootError.tooLow
    } else if (number > 10_000) {
        throw RootError.tooHigh
    }
    
    // Happy path
    for i in 1...100 {
        if i * i == number {
            return i
        }
    }

    throw RootError.notFound
}

let number = 6562

do {
    let root = try square(number)
    print("The square root of \(number.formatted(.number.grouping(.automatic))) is \(root)")
} catch RootError.tooLow {
    print("No numbers lower than 1")
} catch RootError.tooHigh {
    print("No numbers higher than 10,000")
} catch RootError.notFound {
    print("We could not find a square root for \(number.formatted(.number.grouping(.automatic)))")
} catch {
    print("Something went wrong try again")
}
