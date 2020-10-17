import SwiftUI

struct TrianglePlateShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let size: CGFloat = min(rect.width, rect.height)
        let startPoint = CGPoint(x: size * 0.05, y: rect.height / 2 - size / 2)
        path.move(to: startPoint)
        path.addQuadCenteredCurve(to: CGPoint(x: size * 1, y: startPoint.y + size * 0.5), size: size)
        path.addQuadCenteredCurve(to: CGPoint(x: size * 0, y: startPoint.y + size), size: size)
        path.addQuadCenteredCurve(to: startPoint, size: size)
        return path
    }
}

struct PlateView: View {
    enum Style: CaseIterable {
        case triangle
        case circle
        case roundedRectangle
    }

    let style: Style

    var body: some View {
        GeometryReader { geometry in
            makeShape(size: min(geometry.size.width, geometry.size.height))
                .foregroundColor(.white)
                .shadow(radius: 10)
        }
    }

    @ViewBuilder
    private func makeShape(size: CGFloat) -> some View {
        switch style {
        case .triangle:
            TrianglePlateShape()
        case .circle:
            Circle()
        case .roundedRectangle:
            RoundedRectangle(cornerRadius: size / 3)
                .aspectRatio(contentMode: .fit)
        }
    }
}

extension Path {

    mutating func addQuadCenteredCurve(to point: CGPoint, size: CGFloat) {
        guard let currentPoint = currentPoint else { preconditionFailure() }
        let x = (point.x - currentPoint.x) / 2
        let y = (point.y - currentPoint.y) / 2
        let xOffset: CGFloat = (y > 0 ? 1 : -1) * 0.2 * size
        let yOffset: CGFloat = (x < 0 ? 1 : -1) * 0.2 * size
        addQuadCurve(to: point, control: CGPoint(x: currentPoint.x + x + xOffset, y: currentPoint.y + y + yOffset))
    }
}

struct PlateView_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(PlateView.Style.allCases, id: \.self) { style in
            PlateView(style: style)
                .previewLayout(.sizeThatFits)
                .padding()
        }
    }
}
