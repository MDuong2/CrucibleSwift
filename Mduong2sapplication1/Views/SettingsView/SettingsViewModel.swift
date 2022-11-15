import Foundation
import SwiftUI

class SettingsViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var isToggle: Bool = true
}
