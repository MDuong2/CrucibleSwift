import Foundation
import SwiftUI

class ActivityOneViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var labelText: String = ""
    @Published var isValidLabelText: Bool = true
}
