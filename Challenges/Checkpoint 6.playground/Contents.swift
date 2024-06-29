import Cocoa

struct Car {
    let manufacture: String
    let model: String
    let seats: Int
    let numberOfGears: Int
    private(set) var currentGear: Int = 0 {
        didSet {
            print("Changed gear to \(currentGear)")
        }
    }
    
    mutating func changeGear(to gear: Int) {
        if 0...numberOfGears ~= gear && gear != currentGear {
            currentGear = gear
        } else if gear == currentGear {
            print("Already in gear: \(currentGear)")
        } else {
            print("Not a valid gear selection. Gear range: \(0...numberOfGears)")
        }
    }
    
    func printCarInfo() {
        let divider = String(repeating: "-", count: 25)
        print(divider)
        print("Manufacture....: \(manufacture)")
        print("Model..........: \(model)")
        print("Seat Capacity..: \(seats)")
        print("Gear range.....: \(0...numberOfGears)")
        print(divider)
    }
    
    init(manufacture: String, model: String, seats: Int, numberOfGears: Int) {
        self.manufacture = manufacture
        self.model = model
        self.seats = seats
        self.numberOfGears = numberOfGears
    }
}

var audi = Car(manufacture: "Audi", model: "A6", seats: 5, numberOfGears: 8)
audi.currentGear
audi.changeGear(to: 1)
audi.changeGear(to: 2)
audi.changeGear(to: 3)
audi.changeGear(to: 12)
audi.changeGear(to: -1)
audi.changeGear(to: 4)
audi.printCarInfo()
