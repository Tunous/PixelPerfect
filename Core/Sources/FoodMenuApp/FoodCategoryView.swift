import SwiftUI

struct FoodCategoryView: View {
    let categoryName: String
    let itemCount: Int
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            PizzaItem {
                VStack(alignment: .leading, spacing: 12) {
                    Text(categoryName)
                        .font(.titleUltra)
                        .fontWeight(.bold)
                    Text("\(itemCount) items")
                        .font(.footnote)
                        .foregroundColor(.secondary)
                }
            } trailingContent: {
                Image(systemName: "chevron.right")
                    .foregroundColor(.accentColor)
                    .padding()
                    .background(Circle().fill(Color.white))
            }
        }
        .buttonStyle(ScaleButtonStyle())
    }
}

struct FoodCategoryView_Previews: PreviewProvider {
    static var previews: some View {
        FoodCategoryView(categoryName: "Pizza", itemCount: 25, action: {})
            .previewLayout(.sizeThatFits)
    }
}
