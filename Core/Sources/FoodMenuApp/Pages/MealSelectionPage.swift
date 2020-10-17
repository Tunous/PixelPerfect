import SwiftUI

struct MealSelectionPage: View {
    var body: some View {
        ScrollView {
            Spacer(minLength: 48)
            FoodItemView()
            FoodItemView()
        }
    }
}

struct MealSelectionPage_Previews: PreviewProvider {
    static var previews: some View {
        MealSelectionPage()
    }
}
