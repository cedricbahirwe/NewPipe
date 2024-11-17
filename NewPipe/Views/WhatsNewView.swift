//
//  WhatsNewView.swift
//  NewPipe
//
//  Created by Cédric Bahirwe on 15/11/2024.
//

import SwiftUI

struct WhatsNewView: View {
    var body: some View {
        NavigationStack {
            HStack {
                Text("Feed last updated: -, World!")
                Spacer()

                Button {

                } label: {
                    Image(systemName: "arrow.trianglehead.counterclockwise")
                }

            }
            .padding()
            Divider()
            Spacer()
        }
    }
}

#Preview {
    WhatsNewView()
}
