import Foundation
import SwiftUI

class NutritionOneViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var labelText: String = ""
    @Published var isValidLabelText: Bool = true
    @Published var labeloneText: String = ""
    @Published var labeltwoText: String = ""
}
