//
//  Color+Extension.swift
//  PixelPerfect (iOS)
//
//  Created by Łukasz Rutkowski on 23/08/2020.
//

import SwiftUI

extension Color {

    static func random() -> Color {
        Color(red: .random(in: 0...1), green: .random(in: 0...1), blue: .random(in: 0...1))
    }
}
