//
//  PizzaBackground.swift
//  
//
//  Created by Łukasz Rutkowski on 04/10/2020.
//

import SwiftUI

struct PizzaBackground: View {

    let progress: CGFloat

    var body: some View {
        GeometryReader { geometry in
            HStack(spacing: 0) {
                Rectangle()
                    .foregroundColor(.accentColor)
                    .frame(maxWidth: geometry.size.width * progress)
            }
        }
        .ignoresSafeArea()
    }
}

struct PizzaBackground_Previews: PreviewProvider {
    static var previews: some View {
        PizzaBackground(progress: 1/3)
    }
}
