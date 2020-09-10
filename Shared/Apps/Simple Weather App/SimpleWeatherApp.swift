//
//  SimpleWeatherApp.swift
//  PixelPerfect (iOS)
//
//  Created by Łukasz Rutkowski on 07/09/2020.
//

import SwiftUI

extension AppInfo {

    static let simpleWeatherApp = AppInfo(
        id: "simepleweather",
        name: "Simple Weather App Prototype",
        author: "Minh Pham",
        url: "https://dribbble.com/shots/14153317-simple-weather-app-prototype",
        accentColor: .systemYellow
    )
}

struct SimpleWeatherApp: View {
    @State private var selectedPage: Int = 0

    let weathers: [Weather] = Weather.previewData

    var body: some View {
        VStack(spacing: 24) {
            TabView(selection: $selectedPage.animation()) {
                ForEach(weathers.indices, id: \.self) { index in
                    WeatherPageView(weather: weathers[index]).tag(index)
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))

            Text("tokyo".localizedUppercase)
                .tracking(16)
                .padding(.trailing, -16)

            DaySelectionView(weathers: weathers, selectedPage: $selectedPage)
                .padding()
        }
    }
}

struct SimpleWeatherApp_Previews: PreviewProvider {
    static var previews: some View {
        SimpleWeatherApp()
            
    }
}
