import SwiftUI

struct FoodItemView: View {

    @State private var showDetails = false
    @State private var count = 1

    var body: some View {
        PizzaItem {
            VStack(alignment: .leading, spacing: 12) {
                Text("Fried rice with egg and onion")
                    .font(.bodyUltra)
                    .fontWeight(.regular)

                if showDetails {
                    Text("The secret to the best Chinese fried rice is onions, garlic and sesame oil, you may add in cooked chicken, beef, pork or shrimp, also you may add in some frozen thawed peas or fresh sauteed or canned mushrooms, whatever you have handy in your fridge!")
                        .font(.footnote)
                        .foregroundColor(.secondary)
                }

                HStack(spacing: 2) {
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    Image(systemName: "star.fill")
                        .foregroundColor(Color(.systemFill))
                }
                .font(.caption)

                HStack {
                    Text("250 g")
                        .font(.caption)
                        .foregroundColor(.secondary)
                    Spacer()
                    Text("7.50 €")
                        .font(.footnoteUltra)
                        .fontWeight(.regular)
                        .foregroundColor(.accentColor)
                }
            }
        } trailingContent: {
            CountPicker(count: $count)
        }
        .onTapGesture {
            withAnimation {
                showDetails.toggle()
            }
        }
    }
}

struct FoodItemView_Previews: PreviewProvider {
    static var previews: some View {
        FoodItemView()
            .previewLayout(.sizeThatFits)
            .onAppear { registerFonts() }
    }
}
