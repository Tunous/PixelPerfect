import SwiftUI
import PixelPerfectCore

enum Direction {
    case forward, backward
}

struct Page {
    var number: Int {
        willSet {
            direction = newValue > number ? .forward : .backward
        }
    }
    var direction: Direction = .forward
}

struct FoodMenuScreen<Content: View>: View {


    @Binding var currentPage: Page
    let pageCount: Int

    let content: Content

    init(currentPage: Binding<Page>, pageCount: Int, @ViewBuilder content: () -> Content) {
        self._currentPage = currentPage
        self.pageCount = pageCount
        self.content = content()
    }

    @State private var bottomSheetShown = false

    var body: some View {
        ZStack {
            PizzaBackground(progress: CGFloat(currentPage.number) / CGFloat(pageCount))

            content
                .transition(currentPage.direction == .forward
                                ? .asymmetric(insertion: .move(edge: .trailing), removal: .move(edge: .leading))
                                : .asymmetric(insertion: .move(edge: .leading), removal: .move(edge: .trailing)))
                .zIndex(1)

            Toolbar(showBackArrow: currentPage.number > 1, backArrowAction: goBack, cartAction: goToCart, changeCartColor: currentPage.number == 3)
                .zIndex(2)

            if currentPage.number == pageCount {
                BottomSheetView(isOpen: $bottomSheetShown, showIndicator: false) {
                    ShoppingCartView(isOpen: $bottomSheetShown)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
                .zIndex(2)
                .transition(.move(edge: .bottom))
                .onAppear {
                    bottomSheetShown = true
                }
            }
        }
        .ignoresSafeArea(.all, edges: .bottom)
    }

    private func goBack() {
        guard currentPage.number > 1 else { return }
        withAnimation {
            currentPage.number -= 1
        }
    }

    private func goForward() {
        guard currentPage.number < pageCount else { return }
        withAnimation {
            currentPage.number += 1
        }
    }

    private func goToCart() {
        withAnimation {
            currentPage.number = pageCount
        }
    }
}

struct FoodMenuScreen_Previews: PreviewProvider {
    struct Preview: View {
        @State private var currentPage = Page(number: 1)
        var body: some View {
            Text("")
            //            FoodMenuScreen(currentPage: $currentPage, pageCount: 3) {
            //                switch currentPage {
            //                case 1:
            //                    ScrollView {
            //                        Spacer(minLength: 48)
            //                        FoodCategoryView(categoryName: "Pizza", itemCount: 25)
            //                        FoodItemView()
            //                        FoodCategoryView(categoryName: "Salads", itemCount: 30)
            //                        Text("test")
            //                    }
            //                case 2:
            //                    ScrollView {
            //                        Spacer(minLength: 48)
            //                        FoodCategoryView(categoryName: "Pizza", itemCount: 25)
            //                        FoodItemView()
            //                        FoodCategoryView(categoryName: "Salads", itemCount: 30)
            //                        Text("test")
            //                    }
            //                case 3:
            //                    ScrollView {
            //                        Spacer(minLength: 48)
            //                        FoodCategoryView(categoryName: "Pizza", itemCount: 25)
            //                        FoodItemView()
            //                        FoodCategoryView(categoryName: "Salads", itemCount: 30)
            //                        Text("test")
            //                    }
            //                default:
            //                    fatalError()
            //                }
            //
            //            }
        }
    }
    static var previews: some View {
        Preview()
            .accentColor(AppInfo.foodMenuApp.accentColor)
    }
}
