//
//  View+Padding.swift
//  PixelPerfect
//
//  Created by Łukasz Rutkowski on 25/08/2020.
//

import SwiftUI

public extension EdgeInsets {

    func only(_ edges: Edge.Set) -> Self {
        EdgeInsets(
            top: edges.contains(.top) ? top : 0,
            leading: edges.contains(.leading) ? leading : 0,
            bottom: edges.contains(.bottom) ? bottom : 0,
            trailing: edges.contains(.trailing) ? trailing : 0
        )
    }
}
