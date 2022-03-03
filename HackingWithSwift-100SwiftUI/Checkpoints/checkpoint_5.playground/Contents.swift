import UIKit

// checkpoint 5
// filter out even numbers
// sort in ascending order
// map to strings, format: "## is a lucky number"

let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]

let result = luckyNumbers.filter{ $0 % 2 == 1 }.sorted().map{ "\($0) is a lucky number." }.forEach { print($0) }
