import UIKit

// write a function that accepts an Int 1...10_000
// return an Int, the square root of input Int
// throw "out of bounds" error if input is outside of range
// throw "no root" error if input has no whole number integer

enum RootError : Error {
    case outOfBounds, noRoot
}

func findSquareRoot(input: Int) throws -> Int {
    if input < 1 || input > 10_000 {
        throw RootError.outOfBounds
    }
    
    for i in 1...100 {
        if i * i == input {
            return i
        }
    }
    
    throw RootError.noRoot
}

let input = 3

do {
    let root = try findSquareRoot(input: input)
    print("The square root of \(input) is \(root).")
} catch {
    print("Sorry, there was an error.")
}
