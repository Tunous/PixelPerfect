//
//  AppPickerView.swift
//  PixelPerfect
//
//  Created by Łukasz Rutkowski on 24/08/2020.
//

import SwiftUI

struct AppPickerView: View {

    var body: some View {
        NavigationView {
            ZStack(alignment: .bottom) {
                ScrollView {
                    AppView(appInfo: .wateringPlantApp) {
                        WateringPlantApp()
                    }
                    AppView(appInfo: .goodreadsApp) {
                        GoodreadsApp()
                    }
                }

                Label("Once in app shake to return to this list", systemImage: "questionmark.circle")
                    .font(.callout)
                    .foregroundColor(.secondary)
                    .padding(8)
                    .background(Color(.systemBackground))
                    .cornerRadius(16)

            }
            .navigationTitle("PixelPerfect - SwiftUI")
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct AppPickerView_Previews: PreviewProvider {
    static var previews: some View {
        AppPickerView()
    }
}
