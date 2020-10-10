//
//  Alignment+SelectionIndicator.swift
//  PixelPerfect (iOS)
//
//  Created by Łukasz Rutkowski on 10/09/2020.
//

import SwiftUI

extension HorizontalAlignment {
    private enum SelectionIndicatorAlignment: AlignmentID {
        static func defaultValue(in context: ViewDimensions) -> CGFloat {
            return context[HorizontalAlignment.center]
        }
    }

    static let selectionIndicator = HorizontalAlignment(SelectionIndicatorAlignment.self)
}

extension VerticalAlignment {
    private enum SelectionIndicatorAlignment: AlignmentID {
        static func defaultValue(in context: ViewDimensions) -> CGFloat {
            return context[VerticalAlignment.center]
        }
    }

    static let selectionIndicator = VerticalAlignment(SelectionIndicatorAlignment.self)
}

extension Alignment {
    static let selectionIndicator = Alignment(horizontal: .selectionIndicator, vertical: .selectionIndicator)
}
