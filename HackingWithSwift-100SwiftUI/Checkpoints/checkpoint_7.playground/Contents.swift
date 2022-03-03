import UIKit

// checkpoint 7
// create a class heirarchy for animals
// start with Animal with a legs property
// create Dog : Animal with a speak method
// create Corgi, Poodle : Dog with different output of speak()

class Animal {
    let legs: Int
    
    init(legs: Int) {
        self.legs = legs
    }
    
    func speak() {
        assertionFailure("This should not be called.")
    }
}

class Dog : Animal {
    override func speak() {
        print("I am a DOG")
    }
}

final class Corgi : Dog {
    override func speak() {
        print("I am a CORGI")
    }
}

final class Poodle : Dog {
    override func speak() {
        print("I am a POODLE")
    }
}

class Cat : Animal {
    var isTame: Bool
    
    init(legs: Int, isTame: Bool) {
        self.isTame = isTame
        super.init(legs: legs)
    }
    
    override func speak() {
        print("I am a CAT")
    }
}

final class Persian : Cat {
    override func speak() {
        print("I am a PERSIAN cat")
    }
}

final class Lion : Cat {
    override func speak() {
        print("I am a LION")
    }
}

let dog = Dog(legs: 4)
let corgi = Corgi(legs: 4)
let poodle = Poodle(legs: 4)

dog.speak()
corgi.speak()
poodle.speak()

let cat = Cat(legs: 4, isTame: false)
let persian = Persian(legs: 4, isTame: true)
let lion = Lion(legs: 4, isTame: false)

cat.speak()
persian.speak()
lion.speak()
