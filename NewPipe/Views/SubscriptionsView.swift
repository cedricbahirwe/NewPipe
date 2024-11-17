//
//  SubscriptionsView.swift
//  NewPipe
//
//  Created by Cédric Bahirwe on 15/11/2024.
//

import SwiftUI

struct SubscriptionsView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 12) {
                    HStack {
                        Text("Channel groups")
                            .font(.title3)
                            .bold()

                        Spacer()

                        Button(action: {}) {
                            Image(systemName: "circle.grid.3x3.fill")
                        }
                    }

                    Button(action: {}) {
                        HStack(spacing: 12) {
                            Image(systemName: "plus")
                                .frame(maxWidth: .infinity, maxHeight: .infinity)
                                .background(.background)
                                .aspectRatio(1, contentMode: .fit)

                            Text("NEW")
                        }
                        .font(.title3)
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .frame(height: 50)
                        .background(.background, in: .rect(cornerRadius: 4))
                        .overlay {
                            RoundedRectangle(cornerRadius: 4)
                                .strokeBorder(style: StrokeStyle(lineWidth: 1.5, dash: [5]))
                                .foregroundColor(.gray)
                        }
                    }

                    Button(action: {}) {
                        HStack(spacing: 12) {
                            Image(systemName: "play.square.stack")
                                .frame(maxWidth: .infinity, maxHeight: .infinity)
                                .background(.background)
                                .aspectRatio(1, contentMode: .fit)

                            Text("All")
                        }
                        .font(.title3)
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .frame(height: 50)
                        .background(
                            Color(.gray).quinary.shadow(
                                .drop(radius: 4)
                            ),
                            in: .rect(cornerRadius: 3)
                        )
                    }

                    VStack(alignment: .leading, spacing: 12) {
                        Text("Subscriptions")
                            .font(.title3)
                            .bold()


                        VStack {
                            Text(" ")
                            Text("Import or export subscriptions from the 3-dot menu")
                                .foregroundStyle(.secondary)
                                .multilineTextAlignment(.center)
                        }
                        .padding(30)

                    }
                }
                .tint(.primary)
                .padding()

            }
            .background(.regularMaterial)
            .navigationTitle("Subscriptions")
        }
    }
}

#Preview {
    SubscriptionsView()
}
