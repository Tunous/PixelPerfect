//
//  ParallaxHeader.swift
//  PixelPerfect (iOS)
//
//  Created by Łukasz Rutkowski on 23/08/2020.
//

import SwiftUI

struct ParallaxHeader<Background, Content>: View where Background: View, Content: View {
    let alignment: Alignment
    let background: Background
    let content: Content

    init(
        alignment: Alignment = .center,
        @ViewBuilder content: () -> Content,
        @ViewBuilder background: () -> Background
    ) {
        self.alignment = alignment
        self.content = content()
        self.background = background()
    }

    var body: some View {
        ZStack(alignment: alignment) {
            GeometryReader { geometry in
                let verticalScrollOffset = geometry.frame(in: .global).minY
                background
                    .scaledToFill()
                    .frame(
                        width: geometry.size.width,
                        height: max(0, geometry.size.height + verticalScrollOffset)
                    )
                    .clipped()
                    .offset(x: 0, y: -verticalScrollOffset)
            }

            content
        }
    }
}

struct ParallaxHeader_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView {
            ParallaxHeader {
                Text("Header")
                    .padding()
            } background: {
                Color.blue
            }
        }
    }
}
