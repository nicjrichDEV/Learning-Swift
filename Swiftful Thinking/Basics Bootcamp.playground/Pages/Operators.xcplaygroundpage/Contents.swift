import Foundation

var likeCount = 5.0
var commentCount = 0.0
var viewCount = 100.0

likeCount += 1
likeCount -= 1

// MARK: Multiplication -
likeCount *= 1.5

// MARK: Division -
likeCount /= 2

// Note that order of operations is followed when working with math PEMDAS
// 1. Parentheses
// 2. Exponents
// 3. Multiplication and Division
// 4. Additions and Subtraction
likeCount = (likeCount - 1) * 1.5



if likeCount == 5 {
    print("Post has 5 likes")
} else if likeCount != 5 {
    print("Post does NOT have 5 likes")
} else if likeCount >= 5 {
    print("Post has greater than 5 likes")
}

if likeCount > 3 && commentCount > 0 {
    print("Like count > 3 and comments is > 0")
} else {
    print("You sit on a thrown of lies?")
}

if likeCount > 3 || commentCount > 0 {
    print("Well at least something was true")
}

var userIsPremium = true
var userIsNew = false

if userIsPremium && userIsNew {
    print("Welcome there")
}

if (likeCount > 3 && commentCount > 0) || viewCount > 50 {
    print("Example of chaining together && and || statements")
}
