//
//  ContentView.swift
//  swift-reiss
//
//  Created by Carlos García on 09/04/23.
//

import SwiftUI

struct ContentView: View {
    
    // TODO: Generate search in list
    @State private var searchText: String = ""
    @State private var userList: [User] = []
    
    var body: some View {
        NavigationView {
            List(userList) { user in
                NavigationLink(destination: {
                    UserDetailsView(user: user)
                }) {
                    Text("🧑🏻‍💻 \(user.name) \(user.lastName)")
                        .padding(6)
                }
            }
            .navigationTitle("Reiss 💻")
            .searchable(
                text: $searchText,
                placement: .navigationBarDrawer(displayMode: .always),
                prompt: "Search an user"
            )
        }.onAppear {
            UserService().getUsers { (users) in self.userList = users }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
