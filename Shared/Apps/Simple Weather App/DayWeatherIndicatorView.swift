//
//  DayWeatherIndicatorView.swift
//  PixelPerfect (iOS)
//
//  Created by Łukasz Rutkowski on 07/09/2020.
//

import SwiftUI

struct DayWeatherIndicatorView: View {
    let icon: String
    let text: String

    var body: some View {
        VStack(spacing: 24) {
            Image(systemName: icon)
                .frame(width: 24, height: 24)
            Text(text)
                .font(.caption)
        }
        .padding(12)
    }
}

struct DayWeatherIndicatorView_Previews: PreviewProvider {
    static var previews: some View {
        HStack {
            DayWeatherIndicatorView(icon: "cloud.fog", text: "now")
            DayWeatherIndicatorView(icon: "cloud.sun.rain", text: "tue")
            DayWeatherIndicatorView(icon: "cloud.bolt", text: "wed")
            DayWeatherIndicatorView(icon: "cloud.sun", text: "thu")
            DayWeatherIndicatorView(icon: "cloud.sun.rain", text: "fri")
            DayWeatherIndicatorView(icon: "cloud.fog", text: "sat")
        }
    }
}
