import SwiftUI

struct ShoppingCartPage: View {
    var body: some View {
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
    }
}

struct ShoppingCartPage_Previews: PreviewProvider {
    static var previews: some View {
        ShoppingCartPage()
    }
}
