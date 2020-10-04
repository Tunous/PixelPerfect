//
//  ListPreviewView.swift
//  Goodreads
//
//  Created by Łukasz Rutkowski on 01/07/2020.
//

import SwiftUI

struct ListPreviewView: View {
    var body: some View {
        VStack {
            LazyVGrid(columns: [GridItem(.fixed(45)), GridItem(.fixed(45))]) {
                ForEach(0..<4) { _ in
                    RoundedRectangle(cornerRadius: 8, style: .continuous)
                        .foregroundColor(.random())
                        .frame(height: 60)
                }
            }
            .fixedSize()
            .padding()
            .background(Color(.systemGroupedBackground))
            .cornerRadius(16)

            Text("Best Memoir")
                .font(.footnote)
                .fontWeight(.semibold)
            Text("Hello, World!")
                .font(.caption)
                .foregroundColor(.secondary)
        }
    }
}

struct ListPreviewView_Previews: PreviewProvider {
    static var previews: some View {
        ListPreviewView()
    }
}
