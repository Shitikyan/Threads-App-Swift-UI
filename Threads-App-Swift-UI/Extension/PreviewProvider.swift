//
//  PreviewProvider.swift
//  Threads-App-Swift-UI
//
//  Created by Solicy Ios on 21.12.23.
//

import SwiftUI

extension PreviewProvider {
    static var dev: DeveloperPreview {
        return DeveloperPreview.shared
    }
}

class DeveloperPreview {
    static let shared = DeveloperPreview()
    
    let user = User(id: NSUUID().uuidString, fullName: "Max Verstappen", email: "max@gmail.com", userName: "maxverstappen1")
}
