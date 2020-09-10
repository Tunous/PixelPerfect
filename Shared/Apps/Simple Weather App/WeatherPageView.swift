//
//  WeatherPageView.swift
//  PixelPerfect (iOS)
//
//  Created by Łukasz Rutkowski on 10/09/2020.
//

import SwiftUI

struct WeatherPageView: View {
    let weather: Weather

    var body: some View {
        VStack {
            TemperatureView(temperature: weather.temperature)
                .padding(.vertical, 64)

            ZStack {
                Image(systemName: weather.icon)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 160, height: 160)
                    .foregroundColor(.yellow)
                HStack {
                    Spacer()
                    VerticalText(text: weather.description)
                }
            }
            Spacer()
        }
        .padding(.horizontal)
    }
}

struct WeatherPageView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherPageView(weather: Weather.previewData[3])
    }
}
