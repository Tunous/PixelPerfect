//
//  WateringPlantCell.swift
//  PixelPerfect (iOS)
//
//  Created by Łukasz Rutkowski on 23/08/2020.
//

import SwiftUI

struct WateringPlantCell: View {
    var body: some View {
        ZStack(alignment: .topLeading) {
            VStack(alignment: .leading, spacing: 0) {
                Image("Alocasia Polly")
                    .resizable()
                    .scaledToFill()
                    .frame(height: 160)
                    .clipped()

                NavigationLink(destination: WateringPlantDetails()) {
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
                    .accentColor(Color(.label))
                }
            }
            .background(Color(.systemBackground))
            .cornerRadius(8)
            .shadow(color: Color.gray.opacity(0.4), radius: 12, x: 4, y: 4)
            .padding(.leading)

            Button(action: {}) {
                SquareButton()
            }
            .padding(.top, 24)
        }
        .padding()
    }
}

struct WateringPlantCell_Previews: PreviewProvider {
    static var previews: some View {
        WateringPlantCell()
    }
}
