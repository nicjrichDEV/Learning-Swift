
import Foundation

struct MovieModel {
    let title: String
    let genre: MovieGenre
    private(set) var isFavorite: Bool
    
    mutating func updateFavoriteStatus(newValue: Bool) {
        isFavorite = newValue
    }
}

enum MovieGenre {
    case comedy, action, horror
}

class MovieManager {
    // Can get or set from outside
    public var movie1 = MovieModel(title: "Avatar", genre: .action, isFavorite: false)
    // Can not update outside the class
    private var movie2 = MovieModel(title: "Step Brothers", genre: .comedy, isFavorite: false)
    // Read is public but the set is private to the outside
    private(set) var movie3 = MovieModel(title: "Avengers", genre: .action, isFavorite: false)
    
    func updateMovie3(isFavorite: Bool) {
        movie3.updateFavoriteStatus(newValue: isFavorite)
    }
}

let manager = MovieManager()
let someValue = manager.movie1

// MARK: - Version 1 -
// We can get and set the object from outside the object
// "Too Public"
manager.movie1.updateFavoriteStatus(newValue: true)
print(manager.movie1)
manager.movie1.updateFavoriteStatus(newValue: false)
print(manager.movie1)

print("")

// MARK: - Version 2 -
// We can't GET or SET the value from outside the object

// MARK: - Version 3 -
// We can GET the value from outside the object but can not set the value must use internal function
manager.updateMovie3(isFavorite: true)
print(manager.movie3)

/*
 MARK: - Additional Notes -
 Note: Private & Public are by far the most common but there are many
 Others include:
 - Open
 - Public
 - Internal
 - Fileprivate
 - Private
 
 If you don't mark it as anything its essential public (Technically its internal)
 The general rule of thumb is we want everything to be as private as possible.
 Private first mentality makes your code easier to read & debug and is best practice.
 
 */
