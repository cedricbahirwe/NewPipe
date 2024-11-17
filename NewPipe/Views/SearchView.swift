//
//  SearchView.swift
//  NewPipe
//
//  Created by Cédric Bahirwe on 16/11/2024.
//

import SwiftUI

protocol SearchFilterable {
    var description: String { get }
}

extension SearchFilterable {
    func isSameAs(_ filter: SearchFilterable?) -> Bool {
        self.description == filter?.description
    }
}
enum SearMainFilter: String, CaseIterable, SearchFilterable {
    case All, Videos, Channels, Playlists
    var description: String { "\(Self.self)" + rawValue }

    enum YTMusic: String, CaseIterable, SearchFilterable {
        case Songs, Videos, Albums, Playlists
        var description: String { "\(Self.self)" + rawValue }
    }
}

struct SearchView: View {
    @State private var selectedSearchFilter: SearchFilterable? = SearMainFilter.All
    @State private var searchText: String = ""
    @FocusState private var searchFocused: Bool

    private func isSelectedFilter<T: SearchFilterable>(_ filter: T) -> Bool {
        filter.isSameAs(selectedSearchFilter)
    }

    var body: some View {
        NavigationStack {
            Text("something se")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .safeAreaInset(edge: .top) {
                    HStack(spacing: 20) {
                        Button {

                        } label: {
                            Image(systemName: "arrow.left")
                                .imageScale(.large)
                                .bold()
                        }

                        TextField("Search", text: $searchText)
                            .contrast(4)
                            .colorInvert()
                            .bold()
                            .submitLabel(.search)
                            .foregroundStyle(.black)
                            .autocorrectionDisabled()
                            .textInputAutocapitalization(.never)
                            .onSubmit {
                                print("Start searching")
                            }
                            .focused($searchFocused)

                        Group {
                            Button {

                            } label: {
                                Image(systemName: "xmark")
                            }
                            .imageScale(.large)
                            .bold()


                            Menu("Options", systemImage: "ellipsis.circle.fill") {

                                ForEach(SearMainFilter.allCases, id:
                                            \.self) { filter in
                                    menuButtonT(
                                        title: filter.rawValue.capitalized,
                                        filter: filter
                                    )
                                }

                                Menu("Youtube Music") {
                                    ForEach(SearMainFilter.YTMusic.allCases, id:
                                                \.self) { filter in
                                        menuButtonT(
                                            title: filter.rawValue.capitalized,
                                            filter: filter
                                        )
                                    }
                                }
                            }
                            .labelsHidden()
                            .labelStyle(.iconOnly)
                            .imageScale(.large)

                        }
                    }
                    .padding()
                    .background(.red.shadow(.drop(radius: 3)))
                    .foregroundStyle(.white)
                }
                .task {
                    searchFocused = true
                }
        }
    }

    @ViewBuilder
    func menuButtonT<T: SearchFilterable>(title: String, filter: T) -> some View {
        Button {
            self.selectedSearchFilter = filter
        } label: {
            if isSelectedFilter(filter) {
                Label(title, systemImage: "checkmark")
            } else {
                Label(title, systemImage: "checkmark")
                    .labelStyle(.titleOnly)
            }
        }
    }
}

#Preview {
    SearchView()
}
