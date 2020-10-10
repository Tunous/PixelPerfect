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

    @State private var step = 1

    public var body: some View {
        ZStack {
            PizzaBackground(progress: CGFloat(step) / 3)

            ScrollView {
                VStack(alignment: .leading, spacing: 32) {
                    if step > 1 {
                        Text("Salads menu")
                            .font(.largeTitleUltra)
                            .frame(maxWidth: 180)
                            .foregroundColor(.white)
                            .padding([.top, .horizontal], 24)
                    }
                    FoodCategoryView(categoryName: "Pizza", itemCount: 25)
                    FoodItemView()
                    FoodCategoryView(categoryName: "Salads", itemCount: 30)
                    FoodCategoryView(categoryName: "Desserts", itemCount: 30)
                    FoodCategoryView(categoryName: "Pasta", itemCount: 44)
                    FoodCategoryView(categoryName: "Beverages", itemCount: 30)
                }
            }
        }
        .onTapGesture {
            withAnimation {
                step += 1
                if step > 3 {
                    step = 1
                }
            }
        }
    }
}

struct FoodMenuApp_Previews: PreviewProvider {
    static var previews: some View {
        FoodMenuApp()
            .accentColor(AppInfo.foodMenuApp.accentColor)
            .onAppear { registerFonts() }
    }
}
