import Foundation
import SwiftUI

class FirstGreetingViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
}
