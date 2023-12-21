//
//  RegistrationView.swift
//  Threads-App-Swift-UI
//
//  Created by Solicy Ios on 21.12.23.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var fullname = ""
    @State private var username = ""
    
    var body: some View {
        Spacer()
        
        Image("threads-app-icon")
            .resizable()
            .scaledToFit()
            .frame(width: 120, height: 120)
            .padding()
        
        VStack {
            TextField("Enter your email", text: $email)
                .modifier(TextFieldsModifier())
            
            SecureField("Enter your password", text: $password)
                .modifier(TextFieldsModifier())
            
            TextField("Enter your full name", text: $fullname)
                .modifier(TextFieldsModifier())
            
            TextField("Enter your username", text: $username)
                .modifier(TextFieldsModifier())
        }
        
        Button {
            
        } label: {
            Text("Login")
                .font(.subheadline)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
                .frame(width: 352, height: 44)
                .background(.black)
                .cornerRadius(8)
        }
        .padding(.vertical)
        
        Spacer()
        
        Divider()
        
        Button {
            
        } label: {
            HStack(spacing: 3) {
                Text("Already have an account?")
                
                Text("Sign In")
                    .fontWeight(.semibold)
            }
            .font(.footnote)
            .foregroundStyle(.black)
        }
        .padding(.vertical, 16)
    }
}

#Preview {
    RegistrationView()
}
