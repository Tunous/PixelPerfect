//
//  PizzaItem.swift
//  
//
//  Created by Łukasz Rutkowski on 04/10/2020.
//

import SwiftUI

struct PizzaItem: View {
    var body: some View {
        ZStack(alignment: .trailing) {
            HStack {
                VStack(alignment: .leading, spacing: 12) {
                    Text("Pizza")
                        .font(.title)
                        .fontWeight(.bold)
                    Text("25 items")
                        .font(.footnote)
                }
                Spacer()
            }
            .padding(.vertical, 28)
            .padding(.horizontal, 64)
            .background(Color(.systemBackground))
            .cornerRadius(24)
            .shadow(color: Color.black.opacity(0.1), radius: 4, x: 0, y: 8)
            .padding(.horizontal, 24)

            ZStack {
                Circle()
                    .foregroundColor(.white)
                Image(systemName: "chevron.right")
                    .foregroundColor(.accentColor)
            }
                .frame(width: 48, height: 48)
                .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0, y: 8)
        }
        .padding(.horizontal)
    }
}

struct PizzaItem_Previews: PreviewProvider {
    static var previews: some View {
        PizzaItem()
            .previewLayout(.sizeThatFits)
    }
}
