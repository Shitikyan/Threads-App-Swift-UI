//
//  CreateThreadViewModel.swift
//  Threads-App-Swift-UI
//
//  Created by Solicy Ios on 22.12.23.
//

import Firebase

class CreateThreadViewModel: ObservableObject {
    
    func uploadThread(caption: String) async throws {
        guard let uid = Auth.auth().currentUser?.uid else { return }
        
        let thread = Thread(ownerUID: uid, caption: caption, timestamp: Timestamp(), likes: 0)
        try await ThreadService.uploadThread(thread)
    }
}
