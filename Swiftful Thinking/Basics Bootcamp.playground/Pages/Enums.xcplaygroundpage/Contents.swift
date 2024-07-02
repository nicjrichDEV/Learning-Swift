
import Foundation

// MARK: - Enums -
// The same as Struct but we know all cases at run time!
// Enum is stored within the Stack
// Structs are great when you are receiving data and you don't know all the options
// Note: Enums can not be mutated like Structs can even though they are stored in the same area of memory

struct CarModel {
    let brand: CarBrandOption
    let model: String
}


struct CarBrand {
    let title: String
}

enum CarBrandOption {
    case ford, toyota, subaru, honda, nissan
    
    // Computed properties even work in Enums 🫡
    var title: String {
        switch self {
        case .ford:
            return "Ford"
        case .toyota:
            return "Toyota"
        case .subaru:
            return "Subaru"
        case .honda:
            return "Honda"
        case .nissan:
            return "Nissan"
        }
    }
}

//var car1 = CarModel(brand: "Ford", model: "Fiesta")
//var car2 = CarModel(brand: "Ford", model: "Focus")
//var car3 = CarModel(brand: "Toyota", model: "Camry")

//var brand1 = CarBrand(title: "Ford")
//var brand2 = CarBrand(title: "Toyota")

//var car1 = CarModel(brand: CarBrand(title: brand1), model: "Fiesta")
//var car2 = CarModel(brand: CarBrand(title: brand1), model: "Focus")
//var car3 = CarModel(brand: CarBrand(title: brand2), model: "Camry")

var car1 = CarModel(brand: .ford, model: "Fiesta")
var car2 = CarModel(brand: .ford, model: "Focus")
var car3 = CarModel(brand: .toyota, model: "Camry")

print(car1.brand.title)
print(car3.brand.title)
