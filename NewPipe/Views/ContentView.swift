//
//  ContentView.swift
//  NewPipe
//
//  Created by Cédric Bahirwe on 15/11/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Tab("", systemImage: "flame") {
//                TrendingView()
                SearchView()
            }

            Tab("", systemImage: "play.square.stack") {
                WhatsNewView()
            }

            Tab("", systemImage: "tv") {
                SubscriptionsView()
            }

            Tab("", systemImage: "bookmark") {
                BookmarksView()
            }
        }
        .tint(.red)
    }
}

#Preview {
    ContentView()
}
