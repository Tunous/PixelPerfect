//
//  WateringPlantApp.swift
//  PixelPerfect (iOS)
//
//  Created by Łukasz Rutkowski on 23/08/2020.
//

import SwiftUI

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
