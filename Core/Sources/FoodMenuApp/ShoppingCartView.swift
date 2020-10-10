import SwiftUI
import PixelPerfectCore

struct ShoppingCartView: View {
    var body: some View {
        VStack(spacing: 12) {
            HStack {
                Text("Shopping Cart Summary")
                    .font(.bodyUltra)
                    .fontWeight(.regular)
                Spacer()
                Image(systemName: "chevron.up")
                    .foregroundColor(.accentColor)
            }

            Spacer().frame(height: 24)

            CartDetailView(title: "Number of items:", subtitle: "3")
            CartDetailView(title: "Subtotal:", subtitle: "25.75 €")
            CartDetailView(title: "Tax:", subtitle: "1.00 €")
            CartDetailView(title: "Total:", subtitle: "26.75 €")

            Spacer().frame(height: 12)

            HStack {
                Image(systemName: "trash")
                    .imageScale(.small)
                    .frame(width: 24, height: 24)
                    .padding(8)
                    .background(Circle().stroke())
                    .foregroundColor(.secondary)

                Image(systemName: "bookmark")
                    .imageScale(.small)
                    .frame(width: 24, height: 24)
                    .padding(8)
                    .background(Circle().stroke())
                    .foregroundColor(.secondary)

                Spacer()

                Button(action: {}) {
                    Text("Checkout")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.horizontal, 32)
                        .padding(.vertical, 12)
                        .background(
                            RoundedRectangle(cornerRadius: 24)
                                .fill(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 1, green: 0.5422932101, blue: 0.5939697831, alpha: 1)), Color.accentColor]), startPoint: .top, endPoint: .bottom))
                        )
                }
            }
        }
        .padding(24)
        .background(Color(.systemBackground))
        .cornerRadius(40, corners: [.topLeft, .topRight])
    }
}

struct CartDetailView: View {
    let title: String
    let subtitle: String

    var body: some View {
        HStack {
            Text(title)
            Spacer()
            Text(subtitle)
        }
    }
}

struct ShoppingCartView_Previews: PreviewProvider {
    static var previews: some View {
        ShoppingCartView()
            .accentColor(AppInfo.foodMenuApp.accentColor)
            .onAppear { registerFonts() }
            .background(Color.black)
    }
}
