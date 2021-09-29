//
//  Extensions.swift
//  BMICalculator
//
//  Created by Kostya Lee on 25/09/21.
//

import SwiftUI

extension Color {
    static func rgb(r: Double, g: Double, b: Double) -> Color {
        return Color(red: r / 255, green: g / 255, blue: b / 255)
    }
    static let backgroundColor = Color.rgb(r: 224, g: 224, b: 224)
    //static let outlineColor = Color.rgb(r: 54, g: 255, b: 203)
    static let outlineColor = Color.rgb(r: 224, g: 224, b: 224)
    static let trackColor = Color.rgb(r: 193, g: 189, b: 176)
}
