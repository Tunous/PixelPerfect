import SwiftUI

struct FoodCategoriesPage: View {
    let navigateToCategory: () -> Void

    var body: some View {
        ScrollView {
            Spacer(minLength: 48)
            FoodCategoryView(categoryName: "Pizza", itemCount: 25, action: navigateToCategory)
            FoodCategoryView(categoryName: "Salads", itemCount: 30, action: navigateToCategory)
            FoodCategoryView(categoryName: "Desserts", itemCount: 30, action: navigateToCategory)
            FoodCategoryView(categoryName: "Pasta", itemCount: 30, action: navigateToCategory)
            FoodCategoryView(categoryName: "Beverages", itemCount: 30, action: navigateToCategory)
        }
    }
}

struct FoodCategoriesPage_Previews: PreviewProvider {
    static var previews: some View {
        FoodCategoriesPage {}
    }
}
