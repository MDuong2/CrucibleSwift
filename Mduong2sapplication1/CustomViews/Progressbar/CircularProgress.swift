//
//  CircularProgress.swift
//
//  Created by Dhiwise
//

import SwiftUI

/**
  CircularProgress is Fully customizable Circular progress bar that supports animated text, built with SwiftUI.

  # Input Variable: #

  - `percentage`: variable to change progress of circuler progress view. Range of input is 0.0 to 1.0

  - `fontSize`: variable to change font size of center text.

  - `backgroundColor`: variable to change background of circuler progress view.

  - `fontColor`: variable to change color of circuler progress's center text.

  - `borderColor1`: variable to change unfill path color.

  - `borderColor2`: variable aceept 'Gradient View' to fill progress color.

  - `borderWidth`: variable to change width of circuler progressbar path's width.

  # Example #
 ```
  CircularProgress(percentage: 0.8,
                   fontSize: 0.0,
                   backgroundColor: Color.clear,
                   fontColor: Color.red,
                   borderColor1: Color.yellow,
                   borderColor2:
                   LinearGradient(gradient: Gradient(colors: [Color.red, Color.orange, Color.yellow]), startPoint: .leading, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/),
                   borderWidth: 20)
 ```
 */

import SwiftUI

public struct CircularProgress: View {
    var percentage: CGFloat
    var fontSize: CGFloat
    var backgroundColor: Color
    var fontColor: Color
    var borderColor1: Color
    var borderColor2: LinearGradient
    var borderWidth: CGFloat

    public init(percentage: CGFloat, fontSize: CGFloat, backgroundColor: Color, fontColor: Color,
                borderColor1: Color, borderColor2: LinearGradient, borderWidth: CGFloat)
    {
        self.percentage = percentage
        self.fontSize = fontSize
        self.backgroundColor = backgroundColor
        self.fontColor = fontColor
        self.borderColor1 = borderColor1
        self.borderColor2 = borderColor2
        self.borderWidth = borderWidth
    }

    public var body: some View {
        return (Circle()
            .foregroundColor(backgroundColor)
            .modifier(PercentageIndicator(percentage: self.percentage, fontSize: fontSize,
                                          fontColor: fontColor, borderColor1: borderColor1,
                                          borderColor2: borderColor2, borderWidth: borderWidth)))
    }
}

public struct PercentageIndicator: AnimatableModifier {
    var percentage: CGFloat
    let fontSize: CGFloat
    let fontColor: Color
    let borderColor1: Color
    let borderColor2: LinearGradient
    var borderWidth: CGFloat

    public var animatableData: CGFloat {
        get { percentage }
        set { percentage = newValue }
    }

    public func body(content: Content) -> some View {
        content
            .overlay(CircularProgressView(percentage: percentage, fontSize: fontSize,
                                          fontColor: fontColor, borderColor1: borderColor1,
                                          borderColor2: borderColor2, borderWidth: borderWidth))
    }

    public struct CircularProgressView: View {
        let percentage: CGFloat
        let fontSize: CGFloat
        let fontColor: Color
        let borderColor1: Color
        let borderColor2: LinearGradient
        var borderWidth: CGFloat

        public var body: some View {
            ZStack {
                Circle()
                    .stroke(lineWidth: borderWidth)
                    .opacity(0.3)
                    .foregroundColor(borderColor1)
                    .padding(.all, borderWidth / 2)

                borderColor2
                    .mask(Circle()
                        .trim(from: 0.0, to: self.percentage)
                        .stroke(style: StrokeStyle(lineWidth: borderWidth, lineCap: .round,
                                                   lineJoin: .round))
                        .rotationEffect(Angle(degrees: 270.0))
                        .padding(.all, borderWidth / 2))

                Text("\(Int(percentage * 100))%")
                    .foregroundColor(fontColor)
                    .font(.system(size: fontSize))
                    .fontWeight(.bold)
                    .scaleEffect((percentage / 2) + 0.9)
            }
        }
    }
}
