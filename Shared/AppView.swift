//
//  AppView.swift
//  PixelPerfect
//
//  Created by Łukasz Rutkowski on 24/08/2020.
//

import SwiftUI

struct AppView<Content>: View where Content: View {

    @State private var showApp = false

    let appInfo: AppInfo
    let appContent: Content

    internal init(appInfo: AppInfo, @ViewBuilder appContent: () -> Content) {
        self.appInfo = appInfo
        self.appContent = appContent()
    }

    var body: some View {
        Button(action: { showApp = true }) {
            VStack(alignment: .leading) {
                Image(appInfo.image)
                    .resizable()
                    .scaledToFill()
                    .frame(height: 160)
                    .clipped()
                Text(appInfo.name)
                Text("by ").foregroundColor(.secondary) + Text(appInfo.author)
            }
        }
        .fullScreenCover(isPresented: $showApp) {
            appContent
        }
        .padding(.vertical)
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        List {
            AppView(appInfo: .wateringPlantApp) {
                Text("App")
            }
        }
    }
}
