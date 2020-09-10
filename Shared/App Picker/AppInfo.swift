//
//  AppInfo.swift
//  PixelPerfect
//
//  Created by Łukasz Rutkowski on 24/08/2020.
//

import SwiftUI

struct AppInfo {

    let id: String
    let name: String
    let author: String
    let url: URL
    let accentColor: Color

    init(id: String, name: String, author: String, url: String, accentColor: UIColor) {
        self.id = id
        self.name = name
        self.author = author
        self.url = URL(string: url)!
        self.accentColor = Color(accentColor)
    }
}
