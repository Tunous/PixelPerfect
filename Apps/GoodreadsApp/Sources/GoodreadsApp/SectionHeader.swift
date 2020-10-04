//
//  SectionHeader.swift
//  Goodreads
//
//  Created by Łukasz Rutkowski on 29/06/2020.
//

import SwiftUI

struct SectionHeader: View {

    private let title: String
    private let actionText: String?

    init(_ title: String, actionText: String? = nil) {
        self.title = title
        self.actionText = actionText
    }

    var body: some View {
        HStack {
            RoundedRectangle(cornerRadius: 2)
                .frame(width: 4)
                .foregroundColor(.accentColor)
                .opacity(0.5)

            Text(title)
            Spacer()
            if let actionText = actionText {
                Button(actionText, action: {})
                    .foregroundColor(Color(#colorLiteral(red: 0.2117647059, green: 0.5764705882, blue: 0.3803921569, alpha: 1)))
                    .font(.caption)
            }
        }
        .fixedSize(horizontal: false, vertical: true)
        .padding(.horizontal)
        .padding(.top, 24)
        .padding(.bottom, 4)
    }
}

struct SectionHeader_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SectionHeader("Currently Reading", actionText: "see all")
            SectionHeader("Updates")
        }
        .previewLayout(.sizeThatFits)
    }
}
