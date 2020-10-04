//
//  FoodMenuApp.swift
//  PixelPerfect (iOS)
//
//  Created by Łukasz Rutkowski on 04/10/2020.
//

import SwiftUI
import PixelPerfectCore

public extension AppInfo {

    static let foodMenuApp = AppInfo(
        id: "foodmenu",
        name: "Food Menu",
        author: "Unknown",
        url: "https://www.pinterest.com/pin/774124922767471/",
        accentColor: #colorLiteral(red: 0.9607843137, green: 0.231372549, blue: 0.3137254902, alpha: 1)
    )
}

public struct FoodMenuApp: View {
    public init() {}

    public var body: some View {
        VStack {
            Text("Pizza")
            Text("25 items")
        }
    }
}

struct FoodMenuApp_Previews: PreviewProvider {
    static var previews: some View {
        FoodMenuApp()
    }
}
