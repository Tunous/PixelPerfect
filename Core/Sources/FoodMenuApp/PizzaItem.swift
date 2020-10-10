//
//  PizzaItem.swift
//  
//
//  Created by Łukasz Rutkowski on 04/10/2020.
//

import SwiftUI

struct PizzaItem<Content, TrailingContent>: View where Content: View, TrailingContent: View {
    private var content: Content
    private var trailingContent: TrailingContent

    init(
        @ViewBuilder content: () -> Content,
        @ViewBuilder trailingContent: () -> TrailingContent
    ) {
        self.content = content()
        self.trailingContent = trailingContent()
    }

    init(
        @ViewBuilder content: () -> Content
    ) where TrailingContent == EmptyView {
        self.init(content: content, trailingContent: { EmptyView() })
    }

    private var hasTrailingContent: Bool {
        !(trailingContent is EmptyView)
    }

    var body: some View {
        ZStack {
            HStack {
                content
                Spacer()
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.vertical, 28)
            .padding(.leading, 64)
            .padding(.trailing, 32)
            .background(Color(.systemBackground))
            .cornerRadius(24)
            .shadow(color: Color.black.opacity(0.1), radius: 4, x: 0, y: 8)
            .padding(.leading, 24)
            .if(hasTrailingContent) {
                $0.padding(.trailing, 24)
            }
            
            PlateView()
                .frame(width: 64, height: 64)
                .frame(maxWidth: .infinity, alignment: .leading)

            if hasTrailingContent {
                trailingContent
                    .frame(width: 48, height: 48)
                    .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0, y: 8)
                    .frame(maxWidth: .infinity, alignment: .trailing)
            }
        }
        .padding(.horizontal)
    }
}

struct PizzaItem_Previews: PreviewProvider {
    static var previews: some View {
        PizzaItem {
            Text("Pizza")
                .font(.title)
                .fontWeight(.bold)
        }
        .previewLayout(.sizeThatFits)
    }
}
