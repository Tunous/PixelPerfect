//
//  GrowthHistoryView.swift
//  PixelPerfect (iOS)
//
//  Created by Łukasz Rutkowski on 25/08/2020.
//

import SwiftUI

struct GrowthHistoryView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 24) {
                Button(action: {}) {
                    ZStack {
                        Circle()
                            .fill(Color(.tertiarySystemBackground))
                            .overlay(Circle()
                                        .stroke(Color.accentColor, style: StrokeStyle(lineWidth: 1, dash: [8])))
                            .padding(2)
                            .frame(width: 64, height: 64)
                        Image(systemName: "plus")
                            .foregroundColor(.accentColor)
                            .font(.title)
                    }
                }
                Image("Alocasia Polly")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 64, height: 64)
                    .clipShape(Circle())
                Circle()
                    .fill(Color.random())
                    .frame(width: 64, height: 64)
                Circle()
                    .fill(Color.random())
                    .frame(width: 64, height: 64)
                Circle()
                    .fill(Color.random())
                    .frame(width: 64, height: 64)
                Circle()
                    .fill(Color.random())
                    .frame(width: 64, height: 64)
            }
            .padding(.horizontal)
        }
    }
}

struct GrowthHistoryView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            GrowthHistoryView()
                .previewLayout(.sizeThatFits)
            GrowthHistoryView()
                .preferredColorScheme(.dark)
                .previewLayout(.sizeThatFits)
        }
    }
}
