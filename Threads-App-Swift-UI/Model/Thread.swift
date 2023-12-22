//
//  Thread.swift
//  Threads-App-Swift-UI
//
//  Created by Solicy Ios on 22.12.23.
//

import Firebase
import FirebaseFirestoreSwift

struct Thread: Identifiable, Codable {
    @DocumentID var threadId: String?
    let ownerUID: String
    let caption: String
    let timestamp: Timestamp
    var likes: Int
    
    var id: String {
        return threadId ?? NSUUID().uuidString
    }
    
    var user: User?
}
