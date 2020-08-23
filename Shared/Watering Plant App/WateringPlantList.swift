//
//  WateringPlantList.swift
//  PixelPerfect (iOS)
//
//  Created by Łukasz Rutkowski on 23/08/2020.
//

import SwiftUI

struct WateringPlantList: View {
    var body: some View {
        NavigationView {
            ZStack(alignment: .bottomTrailing) {
                ScrollView {
                    WateringPlantCell()
                    WateringPlantCell()
                    WateringPlantCell()
                }

                Button(action: {}) {
                    Image(systemName: "plus")
                        .imageScale(.large)
                        .padding()
                        .background(
                            Circle()
                                .fill(Color.white)
                                .shadow(radius: 6)
                        )
                        .font(Font.body.weight(.bold))
                }
                .padding()
            }
            .navigationTitle("My cutiepies")
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct WateringPlantList_Previews: PreviewProvider {
    static var previews: some View {
        WateringPlantList()
    }
}
