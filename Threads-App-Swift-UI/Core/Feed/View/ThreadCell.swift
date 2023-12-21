//
//  ThreadCell.swift
//  Threads-App-Swift-UI
//
//  Created by Solicy Ios on 21.12.23.
//

import SwiftUI

struct ThreadCell: View {
    var body: some View {
        VStack {
            HStack(alignment: .top, spacing: 12) {
                
                CircularProfileImageView(user: nil, size: .small)
                
                VStack(alignment: .leading, spacing: 4) {
                    HStack {
                        
                        Text("alex.2001")
                            .font(.footnote)
                            .fontWeight(.semibold)
                        Spacer()
                        
                        Text("10m")
                            .font(.caption)
                            .foregroundStyle(Color(.systemGray3))
                        
                        Button(action: {
                            
                        }) {
                            Image(systemName: "ellipsis")
                                .foregroundStyle(Color(.darkGray))
                        }
                    }
                    
                    Text("Formula 1 champion")
                        .font(.footnote)
                        .multilineTextAlignment(.leading)
                    
                    HStack(spacing: 16) {
                        Button(action: {
                            
                        }) {
                            Image(systemName: "heart")
                        }
                        
                        Button(action: {
                            
                        }) {
                            Image(systemName: "bubble.right")
                        }
                        
                        Button(action: {
                            
                        }) {
                            Image(systemName: "arrow.rectanglepath")
                        }
                        
                        Button(action: {
                            
                        }) {
                            Image(systemName: "paperplane")
                        }
                    }
                    .foregroundStyle(.black)
                    .padding(.vertical, 8)
                }
            }
            .padding()
            Divider()
        }
    }
}

#Preview {
    ThreadCell()
}
