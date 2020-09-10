//
//  DaySelectionView.swift
//  PixelPerfect (iOS)
//
//  Created by Łukasz Rutkowski on 10/09/2020.
//

import SwiftUI

struct DaySelectionView: View {
    let weathers: [Weather]
    @Binding var selectedPage: Int

    var body: some View {
        ZStack(alignment: .selectionIndicator) {
            RoundedRectangle(cornerRadius: 4)
                .fill(Color.yellow)
                .frame(width: 48)
                .alignmentGuide(HorizontalAlignment.selectionIndicator, computeValue: { dimension in
                    dimension[HorizontalAlignment.center]
                })

            HStack {
                ForEach(weathers.indices, id: \.self) { index in
                    let weather = weathers[index]

                    if index == selectedPage {
                        DayWeatherIndicatorView(icon: weather.icon, text: weather.day)
                            .alignmentGuide(HorizontalAlignment.selectionIndicator, computeValue: { dimension in
                                dimension[HorizontalAlignment.center]
                            })
                    } else {
                        Button(action: { withAnimation { selectedPage = index } }) {
                            DayWeatherIndicatorView(icon: weather.icon, text: weather.day)
                        }
                        .buttonStyle(PlainButtonStyle())
                    }

                    if index < weathers.endIndex - 1 {
                        Spacer()
                    }
                }
            }
        }
        .fixedSize(horizontal: false, vertical: true)
    }
}

struct DaySelectionView_Previews: PreviewProvider {
    private struct Wrapper: View {
        @State var selectedPage: Int = 2

        var body: some View {
            DaySelectionView(weathers: Weather.previewData, selectedPage: $selectedPage)
        }
    }
    static var previews: some View {
        Wrapper()
            .previewLayout(.sizeThatFits)
    }
}
