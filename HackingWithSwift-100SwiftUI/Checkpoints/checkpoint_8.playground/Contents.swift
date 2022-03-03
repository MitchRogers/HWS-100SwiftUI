import UIKit

// create a protocol that describes a Building
// Building properties numRooms, cost, agentName
// Building method to print the sales summary
// create House and Office structs that conform to Building

protocol Building {
    var numRooms: Int { get }
    var cost: Double { get set }
    var agentName: String { get set }
    
    func printSalesSummary()
}

struct House: Building {
    var numRooms: Int
    var cost: Double
    var agentName: String
    
    func printSalesSummary() {
        print("\(agentName) sold a \(numRooms) bedroom house for $\(cost)")
    }
}

struct Office: Building {
    var numRooms: Int
    var cost: Double
    var agentName: String
    
    func printSalesSummary() {
        print("\(agentName) sold a \(numRooms)-unit office building for $\(cost)")
    }
}

var house = House(numRooms: 4, cost: 550_000, agentName: "Barbara Corcoran")
var office = Office(numRooms: 50, cost: 12_000_000, agentName: "Joe Smith")

house.printSalesSummary()
office.printSalesSummary()
