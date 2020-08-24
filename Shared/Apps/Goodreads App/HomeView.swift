//
//  HomeView.swift
//  Goodreads
//
//  Created by Łukasz Rutkowski on 29/06/2020.
//

import SwiftUI

struct HomeView: View {

    var body: some View {
        NavigationView {
            ScrollView {
                ScrollingSection(header: "Currently reading") {
                    ForEach(0..<3) { _ in
                        CurrentlyReadingCard(book: .becoming)
                            .padding(8)
                    }
                }

                Spacer().frame(height: 24)

                Section(header: SectionHeader("Updates")) {
                    LazyVStack {
                        ForEach(0..<10) { _ in
                            UpdateCard()
                                .padding(.horizontal)
                                .padding(.vertical, 8)
                        }
                    }
                }
            }
            .navigationTitle("Home")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
