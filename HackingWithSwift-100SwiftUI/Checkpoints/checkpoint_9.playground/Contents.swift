import UIKit

// create a function that accepts an optional array of Ints
// return one of the Ints randomly
// if the array is missing or empty, return random 1...100
// !!! write the function in a single line of code

func returnRandomInteger(inputArray: [Int]?) -> Int {
    return inputArray?.randomElement() ?? Int.random(in: 1...100)
}

let randomArray = [1,2,3,4,5,6,33,44,55,66,77,222]

print(returnRandomInteger(inputArray: randomArray))
