import Foundation

var greeting = "Hello, playground"

print("Hello console and what not")
print("Waffle", "House", separator: "--", terminator: ".edu.gov")
print(greeting)

// Single-line comment

/*
 Multi-line comments and what not
 And here is another line
 */

// MARK: Naming conventions
// The common convention for naming variables is to use the camelCase or lowerCamelCase style
let firstGreeting = "Hello, world!"
let thisIsMyFirstGreeting = "Hello, world!"

// 🚫 Don't do this 🚫
let LoudCASING = "I did casing that is not normal for Swift but it still works 🤷"

// 🚫 Snake Case 🚫
let this_is_what_snake_case_looks_like = "Hello, world from snake case 🐍"

// 🚧 Pascal Case 🚧 - Used for structs, classes, protocols, extensions
let ThisIsWhatPascalCaseLooksLike = "Hello, world from Pascal case"

// ✅ Camel Case ✅
let thisIsWhatCamelCaseLooksLike = "Hello, world from lower camelCase"
