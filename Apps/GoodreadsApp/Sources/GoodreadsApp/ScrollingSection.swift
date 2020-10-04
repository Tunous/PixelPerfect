//
//  ScrollingSection.swift
//  Goodreads
//
//  Created by Łukasz Rutkowski on 01/07/2020.
//

import SwiftUI

struct ScrollingSection<Content>: View where Content: View {

    let header: String
    let content: () -> Content

    var body: some View {
        Section(header: SectionHeader(header, actionText: "see all")) {
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack {
                    content()
                }
                .padding()
            }
        }
    }
}

struct ScrollingSection_Previews: PreviewProvider {
    static var previews: some View {
        ScrollingSection(header: "Currently reading") {
            ForEach(0..<3) { _ in
                CurrentlyReadingCard(book: .becoming)
                    .padding(8)
            }
        }
    }
}
