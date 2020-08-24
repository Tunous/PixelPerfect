//
//  MyBooksView.swift
//  Goodreads
//
//  Created by Łukasz Rutkowski on 29/06/2020.
//

import SwiftUI

struct MyBooksView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                ScrollingSection(header: "Shelves") {
                    ForEach(0..<5) { _ in
                        ListPreviewView()
                    }
                }

                Section(header: SectionHeader("Tags")) {

                }

                Section(header: SectionHeader("Reading Challenge")) {

                }
            }
            .navigationTitle("My Books")
            .navigationBarItems(trailing: Image(systemName: "plus.circle"))
        }
    }
}

struct MyBooksView_Previews: PreviewProvider {
    static var previews: some View {
        MyBooksView()
    }
}
