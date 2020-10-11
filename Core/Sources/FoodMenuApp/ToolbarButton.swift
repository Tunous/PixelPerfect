import SwiftUI

struct ToolbarButton: View {
    let iconName: String
    let action: () -> Void
    var makeWhite: Bool = false

    var body: some View {
        Button(action: action) {
            Image(systemName: iconName)
                .imageScale(.large)
                .font(Font.body.bold())
                .frame(width: 24, height: 24)
        }
        .if(makeWhite) {
            $0.accentColor(.white)
        }
    }
}

struct ToolbarButton_Previews: PreviewProvider {
    static var previews: some View {
        ToolbarButton(iconName: "arrow.left", action: {})
            .previewLayout(.sizeThatFits)
    }
}
