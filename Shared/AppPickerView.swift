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
            List {
                AppView(appInfo: .wateringPlantApp) {
                    WateringPlantApp()
                }
                AppView(appInfo: .goodreadsApp) {
                    GoodreadsApp()
                }
            }
            .navigationTitle("PixelPerfect - SwiftUI")
        }
    }
}

struct AppPickerView_Previews: PreviewProvider {
    static var previews: some View {
        AppPickerView()
    }
}
