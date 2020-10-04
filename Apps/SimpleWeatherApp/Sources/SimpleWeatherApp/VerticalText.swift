//
//  VerticalText.swift
//  PixelPerfect (iOS)
//
//  Created by Łukasz Rutkowski on 07/09/2020.
//

import SwiftUI

struct VerticalText: View {
    let text: String

    var letters: [String] {
        text.localizedUppercase.map(String.init)
    }

    var body: some View {
        VStack(spacing: 8) {
            ForEach(letters, id: \.self) { character in
                Text(character)
            }
        }
    }
}

struct VerticalText_Previews: PreviewProvider {
    static var previews: some View {
        VerticalText(text: "sunny")
    }
}
