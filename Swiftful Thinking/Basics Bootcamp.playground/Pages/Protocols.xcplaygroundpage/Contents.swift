
import Foundation

protocol EmployeeHasAName {
    var name: String { get }
}

struct EmployeeModel: EmployeeHasAName {
    let title: String
    let name: String
    
}
