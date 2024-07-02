
import Foundation

// MARK: - Classes -
// Classes are slow
// Classes are stored in the Heap
// Objects in the Heap are Reference types
// Reference types point to an object in memory and update the object in memory

// ViewModel is an architecture methodology to help organize code based on the MVVM structure
// This class will contain all of the data needed for some screen
class ScreenViewModel {
    let title: String
    private(set) var showButton: Bool
    
    // Same init as a Struct, except structs have a automatic member-wise Init created.
    init(title: String, showButton: Bool) {
        self.title = title
        self.showButton = showButton
    }
    
    deinit {
        // Runs as the object is being removed from memory
        // Structs DO NOT HAVE deinit because they are value types
    }
    
    func hideButton() {
        showButton = false
    }
    
    func updateShowButton(newValue: Bool) {
        showButton = newValue
    }
}

// Notice that we are using a "Let" because:
// - The object itself is not changing
// - The data inside the object is changing
let viewModel = ScreenViewModel(title: "Screen 1", showButton: true)
viewModel.showButton
viewModel.hideButton()
viewModel.updateShowButton(newValue: true)
