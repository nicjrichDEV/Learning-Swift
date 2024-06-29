import Cocoa

class Animal {
    var legs: Int
    
    init(legs: Int) {
        self.legs = legs
    }
    
    func speak() {
        assertionFailure("This should never be called directly from the Animal class")
    }
}

class Dog: Animal {
    
    init() {
        super.init(legs: 4)
    }
    
    override func speak() {
        print("Sophie goes bark bark.")
    }
}

final class Corgi: Dog {
    let breed = "Corgi"
    
    override func speak() {
        print("Aslan goes bark, wheres my omelet")
    }
}

final class Poodle: Dog {
    let breed = "Poodle"
    
    override func speak() {
        print("Huxel goes bark")
    }
}

class Cat: Animal {
    var isTame: Bool
    
    init(isTame: Bool) {
        self.isTame = isTame
        super.init(legs: 4)
    }
    
    override func speak() {
        print("The cat goes Meow")
    }
}

final class Persian: Cat {
    override func speak() {
        print("Meow im a Persian cat")
    }
}

final class Lion: Cat {
    override func speak() {
        print("ROOOOAAARRRR -> Lion")
    }
}

let sophie = Dog()
sophie.speak()
let aslan = Corgi()
aslan.speak()
let huxle = Poodle()
huxle.speak()

let orange = Cat(isTame: true)
orange.speak()

let persian = Persian(isTame: true)
persian.speak()

let lion = Lion(isTame: false)
lion.speak()
