//
//  Thread.swift
//  Threads
//
//  Created by Efe Koç on 20.08.2023.
//

import Firebase
import FirebaseFirestoreSwift

struct Thread: Identifiable, Codable {
    @DocumentID var threadId: String?
    let ownerUid: String
    let caption: String
    let timestamp: Timestamp
    let likes: Int
    
    var id: String {
        return threadId ?? NSUUID().uuidString
    }
    var user: User?
}
