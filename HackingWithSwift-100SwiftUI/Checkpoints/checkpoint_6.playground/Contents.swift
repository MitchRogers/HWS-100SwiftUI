import UIKit

// checkpoint 6
// create a Car struct. Include: model, numSeats, currentGear
// add a method to changes gears up/down
// gear ranges 1...10

struct Car {
    let model: String
    let numSeats: Int
    var currentGear: Int
    var userShift: String = ""
    
    mutating func changeGear(direction: String) {
        if direction.lowercased() == "up" && currentGear < 10 {
            currentGear += 1
            userShift = "up"
        } else if direction.lowercased() == "down" && currentGear > 1 {
            currentGear -= 1
            userShift = "down"
        } else {
            print("Cannot shift \(userShift).")
        }
    }
}

var car = Car(model: "Tesla", numSeats: 5, currentGear: 3)

print(car.currentGear)
car.changeGear(direction: "down")

print(car.currentGear)
car.changeGear(direction: "down")

print(car.currentGear)
car.changeGear(direction: "down")
