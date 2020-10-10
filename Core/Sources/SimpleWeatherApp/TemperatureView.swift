//
//  TemperatureView.swift
//  PixelPerfect (iOS)
//
//  Created by Łukasz Rutkowski on 07/09/2020.
//

import SwiftUI

struct TemperatureView: View {
    let temperature: Int

    var body: some View {
        HStack(spacing: 2) {
            Text("\(temperature)")
                .font(.system(size: 120, weight: .regular, design: .rounded))
            VStack {
                Text("°")
                Spacer()
                Text("C")
            }
            .padding(.vertical, 24)
        }
        .fixedSize()
        .font(.system(size: 24, weight: .regular, design: .rounded))
    }
}

struct TemperatureView_Previews: PreviewProvider {
    static var previews: some View {
        TemperatureView(temperature: 22)
    }
}
