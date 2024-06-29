import Cocoa

// MARK: For loops
let platforms = ["iOS", "macOS", "tvOS", "watchOS"]

for platform in platforms {
    print("Swift works great on \(platform)")
}

// 1...12 is a range within Swift
for i in 1...12 {
    print("— The \(i) times table")
    for j in 1...12 {
        print("  ∟\(j) x \(i) is  \(j  * i)")
    }
}


for i in 1...5 {
    print("Counting from 1 through 5: \(i)")
}

for i in 1..<5 {
    print("Counting from 1 up to 5: \(i)")
}

var lyric = "Haters gonna"

for _ in 1...5 {
    lyric += " hate"
}

print(lyric)

let count = 1...3
for _ in count {
    print("Testing")
}


// MARK: While loops
var countdown = 10
while countdown > 0 {
    print("\(countdown)")
    countdown -= 1
}

print("Blast off!!!!")

let id = Int.random(in: 1...1_000)
let amount = Double.random(in: 0...1)

var roll = 0

while roll != 20 {
    roll = Int.random(in: 1...20)
    print("I rolled a \(roll)")
}

print("Critical hit 20")

// MARK: Skipping loop items with break and continue
let filenames = ["me.jpg", "work.txt", "sophie.jpg"]

// Continue: Skips current iteration of the loop and continues to the next.
for filename in filenames {
    
    if filename.hasSuffix(".jpg") == false {
        continue
    }
    
    print("Found picture: \(filename)")
}


let number1 = 4
let number2 = 14
var multiples = [Int]()

// Break: If the break condition is meet the loop will be stopped completely.
for i in 1...100_000 {
    if i.isMultiple(of: number1) && i.isMultiple(of: number2) {
        multiples.append(i)
        
        if multiples.count == 10 {
            break
        }
    }
}

print(multiples)

// Labeled statements: Allows you to provide a label for each loop and then reference the loop with that label such as break outerLoop
let options = ["up", "down", "left", "right"]
let secretCombination = ["up", "up", "right"]

outerLoop: for option1 in options {
    innerLoop1: for option2 in options {
        innerLoop2: for option3 in options {
            print("In loop")
            let attempt = [option1, option2, option3]

            if attempt == secretCombination {
                print("The combination is \(attempt)!")
                break outerLoop
            }
        }
    }
}
