//
//  PlantInformationBar.swift
//  PixelPerfect (iOS)
//
//  Created by Łukasz Rutkowski on 25/08/2020.
//

import SwiftUI



struct PlantInformationBar: View {
    var body: some View {
        HStack(alignment: .top, spacing: 28) {
            InfoView(iconName: "umbrella", text: "Water often to keep moist", color: .blue)
                .frame(maxWidth: .infinity)
            InfoView(iconName: "thermometer", text: "High temperature 20-25°C", color: .red)
                .frame(maxWidth: .infinity)
            InfoView(iconName: "sun.max", text: "Bright but indirect", color: .yellow)
                .frame(maxWidth: .infinity)
        }
        .frame(maxWidth: .infinity)
        .padding(.horizontal)
        .padding(.vertical, 8)
    }
}

struct PlantInformationBar_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            PlantInformationBar()
                .previewLayout(.sizeThatFits)
            PlantInformationBar()
                .preferredColorScheme(.dark)
                .previewLayout(.sizeThatFits)
        }
    }
}
