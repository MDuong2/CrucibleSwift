import Foundation
import SwiftUI

class ActivityViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var dropdownPicker1: String = "Option 1"
    @Published var dropdownPicker1Values: [String] = ["Option 1", "Option 2", "Option 3"]
}
