//
//  GenreView.swift
//  Goodreads
//
//  Created by Łukasz Rutkowski on 29/06/2020.
//

import SwiftUI

struct GenreView: View {

    let name: String
    let color: Color

    var body: some View {
        HStack {
            Text(name)
                .font(.callout)
            Spacer()
        }
        .frame(minHeight: 48, alignment: .topLeading)
        .padding()
        .card(backgroundColor: color)
    }
}

struct GenreView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            GenreView(name: "Non-fiction", color: Color(red: 245/255, green: 215/255, blue: 177/255))
            GenreView(name: "Self-help", color: Color(red: 255/255, green: 231/255, blue: 228/255))
            GenreView(name: "Science", color: Color(red: 209/255, green: 226/255, blue: 237/255))
            GenreView(name: "Business", color: Color(red: 255/255, green: 252/255, blue: 229/255))
        }
        .previewLayout(.sizeThatFits)
    }
}
