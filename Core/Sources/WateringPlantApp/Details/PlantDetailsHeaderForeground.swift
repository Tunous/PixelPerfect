//
//  PlantDetailsForeground.swift
//  PixelPerfect
//
//  Created by Łukasz Rutkowski on 25/08/2020.
//

import SwiftUI
import PixelPerfectCore

struct PlantDetailsHeaderForeground: View {
    let safeAreaGeometry: GeometryProxy

    @Environment(\.presentationMode) private var presentationMode

    var body: some View {
        VStack(alignment: .leading) {
            Button(action: { presentationMode.wrappedValue.dismiss() }) {
                Image(systemName: "xmark")
                    .imageScale(.large)
            }
            .accentColor(.white)

            Spacer()

            Text("Samantha")
                .font(.title)
                .fontWeight(.bold)
            Text("Alocasia Polly")
        }
        .foregroundColor(.white)
        .padding(24)
        .padding(safeAreaGeometry.safeAreaInsets.only([.leading, .trailing, .top]))
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(LinearGradient(gradient: Gradient(colors: [.clear, Color.black.opacity(0.6)]), startPoint: .top, endPoint: .bottom))
    }
}

struct PlantDetailsHeaderForeground_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader { geometry in
            PlantDetailsHeaderForeground(safeAreaGeometry: geometry)
        }
    }
}
