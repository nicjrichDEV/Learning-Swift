import Cocoa

protocol Building {
    var type: String { get }
    var rooms: Int { get }
    var cost: Int { get set }
    var realtor: String { get set }
    
    func printSalesSummary()
}

extension Building {
    func printSalesSummary() {
        print("Type..............: \(type)")
        print("Rooms.............: \(rooms)")
        print("Cost..............: \(cost.formatted(.number.grouping(.automatic)))")
        print("Realtor...........: \(realtor)")
    }
}

struct House: Building {
    let type = "House"
    let rooms: Int
    var cost: Int
    var realtor: String
}

struct Office: Building {
    let type = "Office"
    var rooms: Int
    var cost: Int
    var realtor: String
}

let divider = String(repeating: "-", count: 35)

var home = House(rooms: 4, cost: 350_000, realtor: "Sophie Richardson")
home.printSalesSummary()
print(divider)

var office = Office(rooms: 200, cost: 1_000_000, realtor: "Emily Brennecke")
office.printSalesSummary()
print(divider)
office.rooms = 202
office.realtor = "Sophie Richardson"
office.printSalesSummary()
print(divider)
