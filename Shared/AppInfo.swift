//
//  AppInfo.swift
//  PixelPerfect
//
//  Created by Łukasz Rutkowski on 24/08/2020.
//

import SwiftUI

struct AppInfo {

    let name: String
    let image: String
    let author: String
    let url: URL
    let accentColor: Color

    init(name: String, image: String, author: String, url: String, accentColor: UIColor) {
        self.name = name
        self.image = image
        self.author = author
        self.url = URL(string: url)!
        self.accentColor = Color(accentColor)
    }

    static let wateringPlantApp = AppInfo(
        name: "Watering Plant App - Weekly UI/UX",
        image: "Watering Plant App Preview",
        author: "Eva Dufey",
        url: "https://dribbble.com/shots/5939169-Watering-Plant-App-Weekly-UI-UX",
        accentColor: #colorLiteral(red: 0.0862745098, green: 0.8117647059, blue: 0.3960784314, alpha: 1)
    )

    static let goodreadsApp = AppInfo(
        name: "Goodreads App — UX Case Study",
        image: "Goodreads App Preview",
        author: "Sylvie Stephanie",
        url: "https://medium.muz.li/goodreads-app-ux-case-study-2e63214fc005",
        accentColor: #colorLiteral(red: 0.5294117647, green: 0.4549019608, blue: 0.3529411765, alpha: 1)
    )
}
