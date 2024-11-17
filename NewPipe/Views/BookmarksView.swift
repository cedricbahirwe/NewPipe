//
//  BookmarksView.swift
//  NewPipe
//
//  Created by Cédric Bahirwe on 15/11/2024.
//

import SwiftUI

struct BookmarksView: View {
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
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)

                        Button {

                        } label: {
                            Image(systemName: "line.3.horizontal")
                        }
                        .tint(.primary)
                        .padding()
                    }
                    .listRowInsets(EdgeInsets(top: 4, leading: 0, bottom: 4, trailing: 0))
                }
            }
            .navigationTitle("Bookmarked Playlists")
        }
    }
}

#Preview {
    BookmarksView()
}
