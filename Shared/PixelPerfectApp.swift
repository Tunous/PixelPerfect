//
//  PixelPerfectApp.swift
//  Shared
//
//  Created by Łukasz Rutkowski on 23/08/2020.
//

import SwiftUI
import FoodMenuApp

@main
struct PixelPerfectApp: App {
    var body: some Scene {
        WindowGroup {
            AppPickerView().onAppear { registerFonts() }
        }
    }
}
