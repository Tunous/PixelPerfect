//
//  WateringPlantDetails.swift
//  PixelPerfect (iOS)
//
//  Created by Łukasz Rutkowski on 23/08/2020.
//

import SwiftUI
import PixelPerfectCore

struct WateringPlantDetails: View {

    var body: some View {
        GeometryReader { safeAreaGeometry in
            ScrollView {
                VStack(alignment: .leading, spacing: 0) {
                    ParallaxHeader(alignment: .bottomLeading) {
                        PlantDetailsHeaderForeground(safeAreaGeometry: safeAreaGeometry)
                    } background: {
                        Image("Alocasia Polly")
                            .resizable()
                    }
                    .frame(height: 400)

                    PlantInformationBar()
                        .padding(safeAreaGeometry.safeAreaInsets.only([.leading, .trailing]))

                    HStack {
                        Spacer()
                        Button(action: {}) {
                            SquareButton()
                        }
                    }
                    .frame(height: 24)
                    .padding(.trailing)
                    .offset(x: 0, y: 14)
                    .zIndex(1)
                    .padding(safeAreaGeometry.safeAreaInsets.only([.leading, .trailing]))

                    PlantAdditionalDetailsView()
                        .padding(safeAreaGeometry.safeAreaInsets.only([.leading, .trailing, .bottom]))
                        .background(Color(.secondarySystemBackground))

                    GeometryReader { geometry in
                        Color(.secondarySystemBackground)
                            .frame(height: geometry.frame(in: .global).minY)
                    }
                }
            }
            .ignoresSafeArea()
            .navigationBarHidden(true)
        }
    }
}

struct WateringPlantDetails_Previews: PreviewProvider {
    static var previews: some View {
        WateringPlantDetails()
    }
}


