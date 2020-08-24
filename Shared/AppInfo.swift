//
//  AppInfo.swift
//  PixelPerfect
//
//  Created by Łukasz Rutkowski on 24/08/2020.
//

import Foundation

struct AppInfo {
    let name: String
    let image: String
    let author: String
    let url: URL

    static let wateringPlantApp = AppInfo(
        name: "Watering Plant App - Weekly UI/UX",
        image: "Watering Plant App Preview",
        author: "Eva Dufey",
        url: URL(string: "https://dribbble.com/shots/5939169-Watering-Plant-App-Weekly-UI-UX")!
    )

    static let goodreadsApp = AppInfo(
        name: "Goodreads App — UX Case Study",
        image: "Goodreads App Preview",
        author: "Sylvie Stephanie",
        url: URL(string: "https://medium.muz.li/goodreads-app-ux-case-study-2e63214fc005")!
    )
}
