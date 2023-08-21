//
//  User.swift
//  Threads
//
//  Created by Efe Koç on 17.08.2023.
//

import Foundation

struct User: Identifiable, Codable, Hashable {
    let id: String
    let fullname: String
    let email: String
    let username: String
    var profileImageUrl: String?
    var bio: String?
}
