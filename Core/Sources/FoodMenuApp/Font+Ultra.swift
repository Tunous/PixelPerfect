import SwiftUI
import PixelPerfectCore

extension Font {
    static let largeTitleUltra: Font = .custom("Ultra", size: 38)
    static let titleUltra: Font = .custom("Ultra", size: 22)
    static let bodyUltra: Font = .custom("Ultra", size: 17)
    static let footnoteUltra: Font = .custom("Ultra", size: 13)
}

public func registerFonts() {
    UIFont.registerFont(bundle: .module, fontName: "Ultra", fontExtension: "ttf")
}
