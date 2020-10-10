//
//  BookRecommendationView.swift
//  Goodreads
//
//  Created by Łukasz Rutkowski on 29/06/2020.
//

import SwiftUI

struct BookRecommendationView: View {
    var body: some View {
        VStack {
            CoverImage()

            Text("Outliers: The test")
                .font(.callout)
                .lineLimit(1)
            Text("Malcolm Gladwell")
                .font(.caption2)

            HStack(spacing: 2) {
                ForEach(0..<5) { _ in
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                }
                Text("(4.14)")
            }
            .font(.caption)
        }
        .frame(maxWidth: 120)
    }
}

struct BookRecommendationView_Previews: PreviewProvider {
    static var previews: some View {
        BookRecommendationView()
    }
}
