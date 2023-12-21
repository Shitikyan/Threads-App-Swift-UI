//
//  CircularProfileImageView.swift
//  Threads-App-Swift-UI
//
//  Created by Solicy Ios on 21.12.23.
//

import SwiftUI

struct CircularProfileImageView: View {
    var body: some View {
        Image("alex-profile-image")
            .resizable()
            .scaledToFill()
            .frame(width: 40, height: 40)
            .clipShape(Circle())
    }
}

#Preview {
    CircularProfileImageView()
}
