//
//  SquareButton.swift
//  PixelPerfect (iOS)
//
//  Created by Łukasz Rutkowski on 23/08/2020.
//

import SwiftUI

struct SquareButton: View {
    var body: some View {
        Image(systemName: "plus")
            .frame(minWidth: 32, minHeight: 32)
            .font(.title)
            .padding(8)
            .foregroundColor(.white)
            .background(Color.accentColor)
            .cornerRadius(4)
            .shadow(color: Color.accentColor.opacity(0.4), radius: 8, x: 0, y: 4)
    }
}

struct SquareButton_Previews: PreviewProvider {
    static var previews: some View {
        SquareButton()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
