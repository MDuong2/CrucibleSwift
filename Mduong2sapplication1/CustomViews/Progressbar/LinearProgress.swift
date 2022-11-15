//
//  LinearProgress.swift
//

/**
  LinearProgress is Fully customizable Linear progress bar that supports animated text, built with SwiftUI.

  # Input Variable: #

  - `percentage`: variable to change progress of circuler progress view. Range of input is 0.0 to 1.0

  - `backgroundColor`: variable to change unfill color of linear progress view.

  - `foregroundColor`: variable aceept 'Gradient View' to fill linear progress color.

  # Example #
 ```
  LinearProgress(percentage: 0.5,
                 backgroundColor: Color.gray,
                 foregroundColor: LinearGradient(gradient: Gradient(colors: [Color.red, Color.orange, Color.yellow]), startPoint: .leading, endPoint: .trailing))
 ```
 */

import SwiftUI

public struct LinearProgress: View {
    var percentage: CGFloat
    var foregroundColor: LinearGradient
    var backgroundColor: Color

    public init(percentage: CGFloat, backgroundColor: Color, foregroundColor: LinearGradient) {
        self.percentage = percentage
        self.backgroundColor = backgroundColor
        self.foregroundColor = foregroundColor
    }

    public var body: some View {
        ZStack {
            GeometryReader { geometry in
                Rectangle()
                    .frame(width: min(geometry.size.width, geometry.size.width),
                           height: geometry.size.height)
                    .foregroundColor(backgroundColor)
                    .cornerRadius(geometry.size.width / 7)
                    .opacity(0.5)
                    .shadow(radius: 1)

                foregroundColor
                    .mask(Rectangle()
                        .cornerRadius(geometry.size.width / 7)
                        .animation(.linear))
                    .frame(width: min(geometry.size.width * percentage, geometry.size.width),
                           height: geometry.size.height)
            }
        }
    }
}
