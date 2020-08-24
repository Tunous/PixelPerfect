//
//  CurrentlyReadingCard.swift
//  Goodreads
//
//  Created by Łukasz Rutkowski on 29/06/2020.
//

import SwiftUI

struct CurrentlyReadingCard: View {

    let book: Book

    var body: some View {
        HStack(alignment: .top, spacing: 12) {
            CoverImage()

            VStack(alignment: .leading) {
                Text(book.title)
                    .fontWeight(.semibold)
                (Text("by ") + Text(book.author).foregroundColor(.accentColor))
                    .font(.footnote)

                Spacer().frame(height: 4)

                Text("on page \(book.currentPage) of \(book.pages)")
                    .font(.caption)
                    .foregroundColor(Color(.secondaryLabel))
                HStack {
                    ProgressView(value: book.progressPercentage)
                    Text(book.progressPercentageString)
                        .font(.caption)
                }

                HStack(alignment: .bottom) {
                    Button {

                    } label: {
                        Text("Update")
                        .padding(.vertical, 8)
                        .padding(.horizontal, 16)
                            .background(Color(#colorLiteral(red: 0.2117647059, green: 0.5764705882, blue: 0.3803921569, alpha: 1)))
                        .foregroundColor(Color(.white))
                        .cornerRadius(8)
                        .font(.footnote)
                    }
                    Spacer()
                    Text("updated on 4 Jul 19")
                        .font(.caption2)
                        .fontWeight(.light)
                        .foregroundColor(Color(.secondaryLabel))
                }
            }
        }
        .padding()
        .card()
    }
}

struct CurrentlyReadingCard_Previews: PreviewProvider {
    static var previews: some View {
        CurrentlyReadingCard(book: .becoming)
    }
}
