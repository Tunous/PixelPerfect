//
//  Weather.swift
//  PixelPerfect (iOS)
//
//  Created by Łukasz Rutkowski on 10/09/2020.
//

import Foundation

struct Weather {
    let icon: String
    let day: String
    let temperature: Int
    let description: String

    static let previewData: [Weather] = [
        Weather(icon: "cloud.fog", day: "now", temperature: 25, description: "foggy"),
        Weather(icon: "cloud.sun.rain", day: "tue", temperature: 23, description: "rainy"),
        Weather(icon: "cloud.bolt", day: "wed", temperature: 22, description: "storm"),
        Weather(icon: "cloud.sun", day: "thu", temperature: 29, description: "cloudy"),
        Weather(icon: "cloud.sun.rain", day: "fri", temperature: 26, description: "rainy"),
        Weather(icon: "sun.max", day: "sat", temperature: 31, description: "sunny")
    ]
}
