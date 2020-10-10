//
//  AppInfo.swift
//  PixelPerfect
//
//  Created by Łukasz Rutkowski on 24/08/2020.
//

import SwiftUI

public struct AppInfo {

    public let id: String
    public let name: String
    public let author: String
    public let url: URL
    public let accentColor: Color

    public init(id: String, name: String, author: String, url: String, accentColor: UIColor) {
        self.id = id
        self.name = name
        self.author = author
        self.url = URL(string: url)!
        self.accentColor = Color(accentColor)
    }
}
