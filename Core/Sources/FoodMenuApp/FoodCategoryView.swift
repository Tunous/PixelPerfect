import SwiftUI

struct FoodCategoryView: View {
    let categoryName: String
    let itemCount: Int

    var body: some View {
        PizzaItem {
            VStack(alignment: .leading, spacing: 12) {
                Text(categoryName)
                    .font(.titleUltra)
                    .fontWeight(.bold)
                Text("\(itemCount) items")
                    .font(.footnote)
                    .foregroundColor(.secondary)
            }
        }
    }
}

struct FoodCategoryView_Previews: PreviewProvider {
    static var previews: some View {
        FoodCategoryView(categoryName: "Pizza", itemCount: 25)
            .previewLayout(.sizeThatFits)
    }
}
