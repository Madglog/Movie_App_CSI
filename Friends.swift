//
//  Friends.swift
//  Movie Viewer
//
//  Created by Madhav Dogra on 21/02/24.
//

import SwiftUI


struct Friends: View {
    let Names = ["Nigga1", "Nigga2", "Nigga3", "Nigga4", "NiggaRealOne"]
    @State private var searchText = ""
    var searchResults: [String] {
        if searchText.isEmpty {
            return Names
        }
        else {
            return Names.filter { $0.contains(searchText) }
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
            .navigationTitle("Friends")
            .navigationBarTitleDisplayMode(.inline)
        }
        .searchable(text: $searchText)
    }
}

#Preview {
    Friends()
}
