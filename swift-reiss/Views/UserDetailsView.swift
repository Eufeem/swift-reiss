//
//  UserDetailsView.swift
//  swift-reiss
//
//  Created by Carlos García on 11/04/23.
//

import SwiftUI

struct UserDetailsView: View {
    let user: User
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("\(user.name) \(user.lastName)")
                    .font(.largeTitle)
                    .bold()
                Text(user.email)
                Spacer()
            }
            Spacer()
        }
        .padding([.leading, .trailing], 24)
    }
}

struct UserDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        UserDetailsView(user: User(idUser: 1, name: "Carlos", lastName: "García", username: "Eufeem", password: "sadsad", email: "eufeemgr@gmail.com", status: 1))
    }
}
