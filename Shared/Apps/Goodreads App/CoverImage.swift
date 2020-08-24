//
//  CoverImage.swift
//  Goodreads
//
//  Created by Łukasz Rutkowski on 29/06/2020.
//

import SwiftUI

struct CoverImage: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 8, style: .continuous)
            .foregroundColor(.random())
            .frame(width: 72, height: 104)
    }
}

struct CoverImage_Previews: PreviewProvider {
    static var previews: some View {
        CoverImage().previewLayout(.sizeThatFits)
    }
}
