//
//  WateringPlantCellContentView.swift
//  PixelPerfect
//
//  Created by Łukasz Rutkowski on 25/08/2020.
//

import SwiftUI

struct WateringPlantCellContentView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack {
                Text("Cornelius · ") + Text("2 years old").foregroundColor(.secondary)
                Spacer()
                Image(systemName: "chevron.right")
                    .foregroundColor(.secondary)
            }
            .font(.headline)

            HStack(spacing: 16) {
                Label(
                    title: { Text("in 2 days") },
                    icon: { Image(systemName: "umbrella").foregroundColor(.blue) }
                )
                Label(
                    title: { Text("16 days") },
                    icon: { Image(systemName: "trash").foregroundColor(.purple) }
                )
            }
            .font(Font.caption.weight(.medium))
        }
        .padding()
        .background(Color(.secondarySystemBackground))
    }
}

struct WateringPlantCellContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            WateringPlantCellContentView()
                .previewLayout(.sizeThatFits)
            WateringPlantCellContentView()
                .preferredColorScheme(.dark)
                .previewLayout(.sizeThatFits)
        }
    }
}
