//
//  ListView.swift
//  Movie Viewer
//
//  Created by Madhav Dogra on 21/02/24.
//

import SwiftUI

struct ListView: View {
    @State private var Movies = [
        "Inception",
        "50 Shades Of Gray",
        "365 Days",
        "Niggas in Paris"
    ]
    @State private var searchText = ""
    var searchResults: [String] {
        if searchText.isEmpty {
            return Movies
        }
        else {
            return Movies.filter { $0.contains(searchText) }
        }
    }
    var body: some View {
        NavigationStack{
            List {
                ForEach(searchResults, id: \.self) { Friend in
                    NavigationLink {
                        Text(Friend)
                    } label: {
                        Text(Friend)
                    }
                    .padding()
                }
            }
            .navigationTitle("Movies")
            .navigationBarTitleDisplayMode(.inline)
        }
        .searchable(text: $searchText)
    }
}

#Preview {
    ListView()
}
