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

    @State private var currentPage = Page(number: 1)

    public var body: some View {
        FoodMenuScreen(currentPage: $currentPage, pageCount: 3) {
            switch currentPage.number {
            case 1:
                ScrollView {
                    Spacer(minLength: 48)
                    FoodCategoryView(categoryName: "Pizza", itemCount: 25)
                        .onTapGesture(perform: {
                            withAnimation {
                                currentPage.number += 1
                            }
                        })
                    FoodCategoryView(categoryName: "Salads", itemCount: 30)
                }
            case 2:
                ScrollView {
                    Spacer(minLength: 48)
                    FoodItemView()
                    FoodItemView()
                }
            case 3:
                ScrollView {
                    Spacer(minLength: 48)
                    Text( "Shopping cart")
                        .font(.largeTitleUltra)
                        .foregroundColor(.white)
                        .padding(.horizontal, 24)
                        .animation(.none)
                    FoodItemView()
                    FoodItemView()
                }
            default:
                fatalError()
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
