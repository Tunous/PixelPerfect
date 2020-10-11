import SwiftUI

struct Toolbar: View {

    let showBackArrow: Bool
    let backArrowAction: () -> Void
    let cartAction: () -> Void
    let changeCartColor: Bool

    var body: some View {
        HStack {
            if showBackArrow {
                ToolbarButton(iconName: "arrow.left", action: backArrowAction, makeWhite: true)
            }

            Spacer()

            ToolbarButton(iconName: "cart", action: cartAction, makeWhite: changeCartColor)
        }
        .padding(.horizontal, 32)
        .padding(.vertical, 8)
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
    }
}

struct Toolbar_Previews: PreviewProvider {
    static var previews: some View {
        Toolbar(showBackArrow: true, backArrowAction: {}, cartAction: {}, changeCartColor: true)
            .background(Color.accentColor)
    }
}
