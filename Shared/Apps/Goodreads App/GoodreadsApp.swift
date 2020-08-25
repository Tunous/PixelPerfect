//
//  GoodreadsApp.swift
//  Shared
//
//  Created by Łukasz Rutkowski on 29/06/2020.
//

import SwiftUI

struct GoodreadsApp: View {
    var body: some View {
        TabView {
            HomeView().tabItem {
                Image(systemName: "house")
                Text("Home")
            }

            DiscoverView().tabItem {
                Image(systemName: "map")
                Text("Discover")
            }

            MyBooksView().tabItem {
                Image(systemName: "book")
                Text("My Books")
            }

            ProfileView().tabItem {
                Image(systemName: "person")
                Text("Profile")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        GoodreadsApp()
            .preferredColorScheme(.dark)
    }
}
