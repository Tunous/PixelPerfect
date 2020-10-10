import SwiftUI

struct PlateView: View {
    var body: some View {
        GeometryReader { geometry in
            Path { path in
                let width: CGFloat = min(geometry.size.width, geometry.size.height)
                let startPoint = CGPoint(x: width * 0.05, y: width * 0)
                path.move(to: startPoint)
                path.addQuadCenteredCurve(to: CGPoint(x: width * 1, y: width * 0.5))
                path.addQuadCenteredCurve(to: CGPoint(x: width * 0, y: width * 1))
                path.addQuadCenteredCurve(to: startPoint)
            }
            .fill(Color.white)
            .shadow(radius: 10)
        }
    }
}

extension Path {

    mutating func addQuadCenteredCurve(to point: CGPoint) {
        guard let currentPoint = currentPoint else { preconditionFailure() }
        let x = (point.x - currentPoint.x) / 2
        let y = (point.y - currentPoint.y) / 2
        let xOffset: CGFloat = (y > 0 ? 1 : -1) * 0.2 * 25
        let yOffset: CGFloat = (x < 0 ? 1 : -1) * 0.2 * 25
        addQuadCurve(to: point, control: CGPoint(x: currentPoint.x + x + xOffset, y: currentPoint.y + y + yOffset))
    }
}

struct PlateView_Previews: PreviewProvider {
    static var previews: some View {
        PlateView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
