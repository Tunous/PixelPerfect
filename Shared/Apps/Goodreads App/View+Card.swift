//
//  View+Card.swift
//  Goodreads
//
//  Created by Łukasz Rutkowski on 01/07/2020.
//

import SwiftUI

extension View {

    func card(backgroundColor: Color = Color(.systemBackground)) -> some View {
        self
        .background(backgroundColor)
        .cornerRadius(8)
        .shadow(color: Color(UIColor.black.withAlphaComponent(0.1)), radius: 2)
    }
}

struct View_Card_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            Text("Hello, World!")
            Text("Hello, World!")
        }
        .padding()
        .card()
    }
}
