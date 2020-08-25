//
//  PlantAdditionalDetailsView.swift
//  PixelPerfect (iOS)
//
//  Created by Łukasz Rutkowski on 25/08/2020.
//

import SwiftUI

struct PlantAdditionalDetailsView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack(spacing: 12.0) {
                Text("Growth history")
                    .font(.headline)
                Button(action: {}) {
                    Text("See full")
                        .font(.caption)
                        .fontWeight(.semibold)
                }
            }
            .padding()

            GrowthHistoryView()

            VStack(alignment: .leading, spacing: 8.0) {
                Text("About Alocasia Polly")
                    .font(.headline)
                Text("Because imitating rainforest conditions is so crucial in keeping these Alocasia varieties alive, finding the right location")
                    .font(.body)
            }
            .padding()
        }
        .padding(.top)
    }
}

struct PlantAdditionalDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        PlantAdditionalDetailsView()
    }
}
