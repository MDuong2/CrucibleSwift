import Foundation
import SwiftUI

class SignupPageTwoViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var labelPicker1: String = "Option 1"
    @Published var labelPicker1Values: [String] = ["Option 1", "Option 2", "Option 3"]
    @Published var labeloneText: String = ""
    @Published var groupsixteenText: String = ""
    @Published var groupseventeenText: String = ""
}
