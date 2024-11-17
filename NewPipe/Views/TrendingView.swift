//
//  TrendingView.swift
//  NewPipe
//
//  Created by Cédric Bahirwe on 15/11/2024.
//

import SwiftUI

struct TrendingView: View {
    var body: some View {
        NavigationStack {
            List {
                ForEach(0 ..< 5) { item in
                    HStack {
                        Color.gray
                            .frame(width: 120, height: 80)
                            .overlay {
                                Image(systemName: "play.fill")
                                    .resizable()
                                    .frame(width: 30, height: 30)
                                    .foregroundStyle(Color(.darkGray))
                            }
                        
                        
                        VStack(alignment: .leading, spacing: 0) {
                            Text("Mike Tyson asf asg asijoasg asgojoasg asgoijasg oajoijasg")
                                .lineLimit(2)
                            
                            Text("Fight Hub TV")
                                .font(.caption)
                                .foregroundStyle(.secondary)
                            
                            Text("5.4M views 19 hours ago")
                                .font(.caption)
                                .foregroundStyle(.secondary)
                        }
                    }
                }
            }
            .navigationTitle("Trending")
//            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    TrendingView()
}
