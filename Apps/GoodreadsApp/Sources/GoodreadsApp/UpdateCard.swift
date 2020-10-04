//
//  UpdateCard.swift
//  Goodreads
//
//  Created by Łukasz Rutkowski on 29/06/2020.
//

import SwiftUI

struct UpdateCard: View {

    private let rating = (0...5).randomElement()!

    var body: some View {
        VStack {
            HStack {
                Circle()
                    .foregroundColor(.random())
                    .frame(width: 40, height: 40)

                VStack(alignment: .leading, spacing: 0) {
                    HStack(spacing: 2) {
                        Text("John Doe").foregroundColor(.accentColor).fontWeight(.bold) + Text (" rated it")

                        Spacer().frame(width: 4)

                        ForEach(0..<5) { index in
                            Image(systemName: index < rating ? "star.fill" : "star")
                                .foregroundColor(.yellow)
                        }
                    }.font(.footnote)

                    Text("1h")
                        .font(.caption)
                        .foregroundColor(Color(.secondaryLabel))
                }

                Spacer()

                Image(systemName: "chevron.down")
            }

            HStack(alignment: .top, spacing: 12) {
                CoverImage()

                VStack(alignment: .leading) {
                    Text("Born a Crime: Stories from a South African Childhood")
                        .fontWeight(.semibold)
                    (Text("by ") + Text("Trevor Noah").foregroundColor(.accentColor))
                        .font(.caption)

                    Spacer().frame(height: 8)

                    Text("I was really surprised when Trevor Noah was named Jon Stewart's successor on The Daily show. I inherently knew that they wouldn't pick someone")
                        .font(.footnote)
                        .lineLimit(3)
                }
            }

            Divider()

            HStack(spacing: 16) {
                Label("2 Likes", systemImage: "hand.thumbsup")
                Label("4 Comments", systemImage: "text.bubble")
                Spacer()
            }
            .foregroundColor(Color(.secondaryLabel))
            .font(.footnote)
        }
        .padding()
        .card()
        .contextMenu {
            Button(action: {}) {
                Label("Hide this post", systemImage: "xmark.circle")
            }
            Button(action: {}) {
                Label("Unfollow John", systemImage: "person.badge.minus")
            }
            Button(action: {}) {
                Label("Report this post", systemImage: "flag")
            }
        }
    }
}

struct UpdateCard_Previews: PreviewProvider {
    static var previews: some View {
        UpdateCard()
            .previewLayout(.sizeThatFits)
    }
}
