//
//  PizzaBackground.swift
//  
//
//  Created by Łukasz Rutkowski on 04/10/2020.
//

import SwiftUI

struct PizzaBackground: View {
    var body: some View {
        HStack(spacing: 0) {
            Rectangle()
                .foregroundColor(.accentColor)
                .frame(maxWidth: 160)
            Rectangle()
                .foregroundColor(Color(.systemBackground))
        }
        .ignoresSafeArea()
    }
}

struct PizzaBackground_Previews: PreviewProvider {
    static var previews: some View {
        PizzaBackground()
    }
}
