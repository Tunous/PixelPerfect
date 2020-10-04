//
//  DiscoverView.swift
//  Goodreads
//
//  Created by Łukasz Rutkowski on 29/06/2020.
//

import SwiftUI

struct DiscoverView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                ScrollingSection(header: "Recommended for you") {
                    ForEach(0..<10) { _ in
                        BookRecommendationView()
                    }
                }

                (Text("Because you have read ") + Text("Shoe Dog: A Memoir by the Creature").foregroundColor(.accentColor))
                    .lineLimit(1)
                    .padding([.leading, .top, .trailing])
                    .font(.caption)

                UpdateCard()
                    .padding(.horizontal)

                Section(header: SectionHeader("Favorite Genres", actionText: "see all")) {

                    LazyVGrid(columns: [GridItem(spacing: 16), GridItem()], spacing: 16) {           GenreView(name: "Non-fiction", color: .random())
                        GenreView(name: "Self-help", color: .random())
                        GenreView(name: "Science", color: .random())
                        GenreView(name: "Business", color: .random())
                    }
                    .padding()
                }

                ScrollingSection(header: "News and interviews") {
                    ForEach(0..<10) { _ in
                        NewsCard()
                    }
                }

                ScrollingSection(header: "Featured List") {
                    ForEach(0..<5) { _ in
                        ListPreviewView()
                    }
                }
            }
            .navigationTitle("Discover")
        }
    }
}

struct DiscoverView_Previews: PreviewProvider {
    static var previews: some View {
        DiscoverView()
    }
}
