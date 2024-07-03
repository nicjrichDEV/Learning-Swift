
import Foundation

// MARK: - Dictionaries -
// Example of an Array and Set
var finalFruits = ["Apple", "Orange", "Banana", "Apple"]
var fruitsSet = Set(finalFruits)
print(finalFruits) // Retains order and allows duplicates
print(fruitsSet) // Does not retain order or allow duplicates

var myFirstDictionary: [String : Bool] = [
    "Apple"  : true,
    "Orange" : false
]

let item = myFirstDictionary["Banana"]

var anotherDictionary = [
    0   : "Apple",
    176 : "Banana"
]

// Notice that when you access a key that does not exist it returns nil instead of crashing the app like an array would.
// Note: You can not have duplicate keys though, it can have duplicate values
let item2 = anotherDictionary[86]

anotherDictionary[76] = "Fallout 76"
print(anotherDictionary)

anotherDictionary.removeValue(forKey: 76)
print(anotherDictionary)

struct PostModel {
    let id: UUID
    let title: String
    let likeCount: Int
}

var postArray = [
    PostModel(id: UUID(), title: "Post 1", likeCount: 5),
    PostModel(id: UUID(), title: "Post 2", likeCount: 7),
    PostModel(id: UUID(), title: "Post 3", likeCount: 217),
]

if postArray.indices.contains(1) {
    let item = postArray[1]
    print(item)
}

var postDict: [UUID : PostModel] = [
    UUID(): PostModel(id: UUID(), title: "Post 1", likeCount: 5),
    UUID(): PostModel(id: UUID(), title: "Post 2", likeCount: 7),
    UUID(): PostModel(id: UUID(), title: "Post 3", likeCount: 217),
]
