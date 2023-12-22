//
//  FeedViewModel.swift
//  Threads-App-Swift-UI
//
//  Created by Solicy Ios on 22.12.23.
//

import Foundation

@MainActor
class FeedViewModel: ObservableObject {
    @Published var threads = [Thread]()
    
    init() {
        Task { try await fetchThreads() }
    }
    
    func fetchThreads() async throws {
        self.threads = try await ThreadService.fetchThreads()
        try await fetchUserDataForThreads()
    }
    
    private func fetchUserDataForThreads() async throws {
        for i in 0..<threads.count {
            let thread = threads[i]
            let ownerUID = thread.ownerUID
            let threadUser = try await UserService.fetchUser(withUid: ownerUID)
            
            threads[i].user = threadUser
        }
    }
}
