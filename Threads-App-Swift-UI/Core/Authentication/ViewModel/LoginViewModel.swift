//
//  LoginViewModel.swift
//  Threads-App-Swift-UI
//
//  Created by Solicy Ios on 21.12.23.
//

import SwiftUI

class LoginViewModel: ObservableObject {
    
    @Published var email = ""
    @Published var password = ""
    
    @MainActor
    func login() async throws {
        try await AuthService.shared.login(withEmail: email, password: password)
    }
}
