//
//  PreviewProvider.swift
//  Threads
//
//  Created by Efe Koç on 18.08.2023.
//

import SwiftUI
import Firebase

extension PreviewProvider {
    static var dev: DeveloperPreview {
        return DeveloperPreview.shared
    }
}

class DeveloperPreview {
    static let shared = DeveloperPreview()
    
    let user = User(id: NSUUID().uuidString, fullname: "Lewis Hamilton", email: "lh44@gmail.com", username: "lewishamilton")
    
    let thread = Thread(ownerUid: "123", caption: "This is a test Thread", timestamp: Timestamp(), likes: 0)
}
