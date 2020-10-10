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

            GeometryReader { geometry in
                ScrollView {
                    ScrollViewReader { proxy in
                        VStack(alignment: .leading, spacing: 32) {
                            Spacer(minLength: 12)
                            if step > 1 {
                                Text(step == 3 ? "Shopping cart" : "Salads menu")
                                    .font(.largeTitleUltra)
                                    .foregroundColor(.white)
                                    .padding([.top, .horizontal], 24)
                                    .frame(maxWidth: geometry.size.width * 2/3, alignment: .leading)
                                    .animation(.none)
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
            }

            HStack {
                if step > 1 {
                    Button(action: goBack) {
                        Image(systemName: "arrow.left")
                            .imageScale(.large)
                            .font(Font.body.bold())
                            .frame(width: 24, height: 24)
                    }
                    .accentColor(.white)
                }

                Spacer()

                Button(action: goToCart) {
                    Image(systemName: "cart")
                        .imageScale(.large)
                        .font(Font.body.bold())
                        .frame(width: 24, height: 24)
                }
                .accentColor(step == 3 ? .white : AppInfo.foodMenuApp.accentColor)
            }
            .padding(.horizontal, 32)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)

            if step == 3 {
                ShoppingCartView()
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
                    .zIndex(1)
                    .transition(.move(edge: .bottom))
            }
        }
        .onTapGesture(perform: goForward)
        .ignoresSafeArea(.all, edges: .bottom)
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
