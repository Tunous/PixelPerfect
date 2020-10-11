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

    @State private var step = 3 {
        didSet {
            bottomSheetShown = true
        }
    }
    @State private var bottomSheetShown = false

    @State private var currentPage = 1

    public var body: some View {
        FoodMenuScreen(currentPage: $currentPage, pageCount: 3) {
            switch currentPage {
            case 1:
                ScrollView {
                    Spacer(minLength: 48)
                    FoodCategoryView(categoryName: "Pizza", itemCount: 25)
                        .onTapGesture(perform: {
                            withAnimation {
                                currentPage += 1
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

    private func goToCart() {
        withAnimation { step = 3 }
    }

    private func goBack() {
        guard step > 1 else { return }
        withAnimation {
            step -= 1
        }
    }

    private func goForward() {
        guard step < 3 else { return }
        withAnimation {
            step += 1
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
