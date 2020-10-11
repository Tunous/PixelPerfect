import SwiftUI
import PixelPerfectCore

struct FoodMenuScreen<Content: View>: View {


    @Binding var currentPage: Int {
        didSet {
            bottomSheetShown = true
        }
    }
    let pageCount: Int

    let content: Content

    init(currentPage: Binding<Int>, pageCount: Int, @ViewBuilder content: () -> Content) {
        self._currentPage = currentPage
        self.pageCount = pageCount
        self.content = content()
    }

    @State private var bottomSheetShown = false

    var body: some View {
        ZStack {
            PizzaBackground(progress: CGFloat(currentPage) / CGFloat(pageCount))

            // TODO: How to change transition based on action
            content
                .transition(.asymmetric(insertion: .move(edge: .trailing), removal: .move(edge: .leading)))
                .zIndex(1)

            Toolbar(showBackArrow: currentPage > 1, backArrowAction: goBack, cartAction: goToCart, changeCartColor: currentPage == 3)
                .zIndex(2)

            if currentPage == pageCount {
                BottomSheetView(isOpen: $bottomSheetShown, showIndicator: false) {
                    ShoppingCartView(isOpen: $bottomSheetShown)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
                .zIndex(2)
                .transition(.move(edge: .bottom))
            }
        }
        .ignoresSafeArea(.all, edges: .bottom)
    }

    private func goBack() {
        guard currentPage > 1 else { return }
        withAnimation {
            currentPage -= 1
        }
    }

    private func goForward() {
        guard currentPage < pageCount else { return }
        withAnimation {
            currentPage += 1
        }
    }

    private func goToCart() {
        withAnimation {
            currentPage = pageCount
        }
    }
}

struct FoodMenuScreen_Previews: PreviewProvider {
    struct Preview: View {
        @State private var currentPage = 1
        var body: some View {
            FoodMenuScreen(currentPage: $currentPage, pageCount: 3) {
                switch currentPage {
                case 1:
                    ScrollView {
                        Spacer(minLength: 48)
                        FoodCategoryView(categoryName: "Pizza", itemCount: 25)
                        FoodItemView()
                        FoodCategoryView(categoryName: "Salads", itemCount: 30)
                        Text("test")
                    }
                case 2:
                    ScrollView {
                        Spacer(minLength: 48)
                        FoodCategoryView(categoryName: "Pizza", itemCount: 25)
                        FoodItemView()
                        FoodCategoryView(categoryName: "Salads", itemCount: 30)
                        Text("test")
                    }
                case 3:
                    ScrollView {
                        Spacer(minLength: 48)
                        FoodCategoryView(categoryName: "Pizza", itemCount: 25)
                        FoodItemView()
                        FoodCategoryView(categoryName: "Salads", itemCount: 30)
                        Text("test")
                    }
                default:
                    fatalError()
                }

            }
        }
    }
    static var previews: some View {
        Preview()
            .accentColor(AppInfo.foodMenuApp.accentColor)
    }
}
