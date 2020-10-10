//
//  ProfileView.swift
//  Goodreads
//
//  Created by Łukasz Rutkowski on 29/06/2020.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationView {
            Text("Jane Doe")
                .navigationTitle("Profile")
                .navigationBarItems(trailing: Image(systemName: "ellipsis.circle"))
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
