import Cocoa

var count = 1

while count <= 100 {
    if count.isMultiple(of: 3) {
        if count.isMultiple(of: 5) {
            print("\(count) - FizzBuzz")
        } else {
            print("\(count) - Fizz")
        }
    } else if count.isMultiple(of: 5) {
        print("\(count) - Buzz")
    } else {
        print("\(count)")
    }
    
    count += 1
}
