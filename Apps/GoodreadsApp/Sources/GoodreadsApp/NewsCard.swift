//
//  NewsCard.swift
//  Goodreads
//
//  Created by Łukasz Rutkowski on 01/07/2020.
//

import SwiftUI

struct NewsCard: View {
    var body: some View {
        VStack(spacing: 0.0) {
            Color.random()
                .frame(height: 80)

            VStack {
                Text("The Most Read Books of the 2019 Reading Challenge")
                    .font(.footnote)
                    .lineLimit(3)
                HStack {
                    Label("226", systemImage: "heart.fill")
                    Label("116", systemImage: "bubble.right.fill")
                    Spacer()
                    Text("24 Jun 2019")
                }
                .font(.caption)
                .foregroundColor(.secondary)
            }
            .padding(8)
        }
        .frame(maxWidth: 240)
        .fixedSize(horizontal: false, vertical: true)
        .card()
    }
}

struct NewsCard_Previews: PreviewProvider {
    static var previews: some View {
        NewsCard()
    }
}
