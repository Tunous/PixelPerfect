//
//  AppView.swift
//  PixelPerfect
//
//  Created by Łukasz Rutkowski on 24/08/2020.
//

import SwiftUI

public struct AppView<Content>: View where Content: View {

    @State private var showApp = false

    let appInfo: AppInfo
    let appContent: Content

    public init(_ appInfo: AppInfo, @ViewBuilder appContent: () -> Content) {
        self.appInfo = appInfo
        self.appContent = appContent()
    }

    public var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            ZStack(alignment: .bottomTrailing) {
                Image(appInfo.id)
                    .resizable()
                    .scaledToFill()
                    .frame(height: 160)
                    .clipped()

                Link(destination: appInfo.url) {
                    Image(systemName: "safari")
                        .imageScale(.large)
                        .padding(8)
                        .background(appInfo.accentColor)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                        .padding(8)
                }
            }

            Button(action: { showApp = true }) {
                HStack {
                    VStack(alignment: .leading, spacing: 4) {
                        Text(appInfo.name)
                            .font(.body)
                        (Text("Design by ").foregroundColor(.secondary) + Text(appInfo.author))
                            .font(.footnote)
                    }
                    Spacer()
                    Image(systemName: "chevron.right")
                        .font(Font.body.bold())
                        .foregroundColor(.secondary)
                }
                .padding()
                .background(Color(.systemFill))
            }
            .buttonStyle(PlainButtonStyle())
        }
        .cornerRadius(16)
        .padding()
        .fullScreenCover(isPresented: $showApp) {
            appContent
                .accentColor(appInfo.accentColor)
        }
        .onReceive(NotificationCenter.default.publisher(for: .deviceDidShakeNotification), perform: { _ in
            showApp = false
        })
    }
}

struct AppView_Previews: PreviewProvider {

    static let app = AppInfo(
        id: "simpleweather",
        name: "Simple Weather App Prototype",
        author: "Minh Pham",
        url: "https://dribbble.com/shots/14153317-simple-weather-app-prototype",
        accentColor: .systemYellow
    )

    static var previews: some View {
        AppView(app) {
            Text("App")
        }
    }
}
