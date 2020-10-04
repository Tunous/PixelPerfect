//
//  WateringPlantApp.swift
//  PixelPerfect (iOS)
//
//  Created by Łukasz Rutkowski on 23/08/2020.
//

import SwiftUI
import PixelPerfectCore

extension AppInfo {

    static let wateringPlantApp = AppInfo(
        id: "wateringplant",
        name: "Watering Plant App - Weekly UI/UX",
        author: "Eva Dufey",
        url: "https://dribbble.com/shots/5939169-Watering-Plant-App-Weekly-UI-UX",
        accentColor: #colorLiteral(red: 0.0862745098, green: 0.8117647059, blue: 0.3960784314, alpha: 1)
    )
}

struct WateringPlantApp: View {
    var body: some View {
        TabView {
            WateringPlantList()
                .tabItem {
                    Label("Today", systemImage: "sun.max")
                }

            Text("My plants")
                .tabItem {
                    Label("My plants", systemImage: "burst")
                }

            Text("Tips")
                .tabItem {
                    Label("Tips", systemImage: "questionmark.circle")
                }

            Text("Profile")
                .tabItem {
                    Label("Profile", systemImage: "person")
                }
        }
    }
}

struct WateringPlantApp_Previews: PreviewProvider {
    static var previews: some View {
        WateringPlantApp()
    }
}
