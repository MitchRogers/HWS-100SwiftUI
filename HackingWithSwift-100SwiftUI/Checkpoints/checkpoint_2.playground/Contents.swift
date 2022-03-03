import UIKit

// checkpoint 2
// create an array of strings
// print the number of elements
// print the number of unique elements

let colors = ["red", "black", "blue", "purple", "yellow", "blue", "purple", "yellow"]

let colorsCount = colors.count

let uniqueColors = Set(colors).count

print("Total Elements:", colorsCount)
print("Unique Elements:", uniqueColors)
