//
//  UserService.swift
//  swift-reiss
//
//  Created by Carlos García on 11/04/23.
//

import Foundation

class UserService {

    func getUsers(completion: @escaping ([User]) -> ()) {
        guard let url = URL(string: "http://localhost:8080/user") else {
            return
        }
        print("- URL SESSION GET -")
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data else { return }
            if let users = try? JSONDecoder().decode([User].self, from: data) {
                print(users)
                DispatchQueue.main.async {
                    completion(users)
                }
            }
        }.resume()
    }
    
}
