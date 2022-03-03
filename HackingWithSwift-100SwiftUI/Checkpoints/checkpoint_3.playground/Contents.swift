import UIKit

// checkpoint 3
// loop 1...100, and for each number print:
// "Fizz" if multiple of 3
// "Buzz" if multiple of 5
// "FizzBuzz" if multiple of 3 AND 5
// else just the number

for i in 1...100 {
    if i % 3 == 0 && i % 5 == 0 {
        print("FizzBuzz")
    } else if i % 3 == 0 {
        print("Fizz")
    } else if i % 5 == 0 {
        print("Buzz")
    } else {
        print(i)
    }
}
