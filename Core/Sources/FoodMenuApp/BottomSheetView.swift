//
//  BottomSheetView.swift
//
//  Created by Majid Jabrayilov
//  Copyright © 2019 Majid Jabrayilov. All rights reserved.
//

import SwiftUI

fileprivate enum Constants {
    static let snapRatio: CGFloat = 0.25
}

struct BottomSheetView<Content: View>: View {
    @Binding var isOpen: Bool

    let content: Content
    private let showIndicator: Bool

    @GestureState private var translation: CGFloat = 0

    private var indicator: some View {
        RoundedRectangle(cornerRadius: 16)
            .fill(Color.secondary)
            .frame(width: 60, height: 6)
            .onTapGesture {
                self.isOpen.toggle()
            }
    }

    init(isOpen: Binding<Bool>, showIndicator: Bool = true, @ViewBuilder content: () -> Content) {
        self._isOpen = isOpen
        self.showIndicator = showIndicator
        self.content = content()
    }

    @State private var height: CGFloat = 0

    var body: some View {
        VStack(spacing: 0) {
            if showIndicator {
                indicator.padding()
            }
            content
        }
        .frame(maxWidth: .infinity)
        .offset(y: max(0, (isOpen ? 0 : height - 64) + translation))
        .animation(.interactiveSpring())
        .gesture(
            DragGesture()
                .updating($translation) { value, state, _ in
                    state = value.translation.height
                }
                .onEnded { value in
                    let snapDistance = height * Constants.snapRatio
                    guard abs(value.translation.height) > snapDistance else {
                        return
                    }
                    self.isOpen = value.translation.height < 0
                }
        )
        .background(GeometryReader { geometry2 in
            Color.clear
                .onAppear { height = geometry2.size.height }
        })
    }
}

struct BottomSheetView_Previews: PreviewProvider {
    struct Preview: View {
        @State private var isOpen = false
        var body: some View {
            BottomSheetView(isOpen: $isOpen) {
                VStack {
                    ForEach(0..<10) { _ in
                        Text("1")
                    }
                    Text("@")
                }
            }
        }
    }
    static var previews: some View {
        ZStack(alignment: .bottom) {
            Color.clear
            Preview()
        }
    }
}
