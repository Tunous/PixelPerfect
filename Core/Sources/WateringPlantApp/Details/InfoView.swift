//
//  InfoView.swift
//  PixelPerfect (iOS)
//
//  Created by Łukasz Rutkowski on 23/08/2020.
//

import SwiftUI

struct InfoView: View {
    let iconName: String
    let text: String
    let color: Color

    var body: some View {
        VStack(spacing: 8) {
            Image(systemName: iconName)
                .foregroundColor(color)
                .font(.title)
                .frame(height: 48, alignment: .center)
            Text(text)
                .font(.footnote)
                .multilineTextAlignment(.center)
        }
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(iconName: "thermometer", text: "High temperature 20-25°C", color: .red)
            .previewLayout(.sizeThatFits)
            .frame(width: 120)
            .padding()
    }
}
