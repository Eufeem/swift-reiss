//
//  User.swift
//  swift-reiss
//
//  Created by Carlos García on 10/04/23.
//

import SwiftUI

struct User: Codable, Identifiable {
    let id = UUID()
    let idUser: Int
    let name: String
    let lastName: String
    let username: String
    let password: String
    let email: String
    let status: Int
}


