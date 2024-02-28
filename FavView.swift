//
//  FavView.swift
//  Movie Viewer
//
//  Created by Madhav Dogra on 28/02/24.
//

import SwiftUI

struct FavView: View {
    var body: some View {
        VStack{
            NavigationStack{
                ScrollView{
                    Image("Inception")
                    Text("Inception is a 2010 science fiction action film[4][5][6] written and directed by Christopher Nolan, who also produced the film with Emma Thomas, his wife. The film stars Leonardo DiCaprio as a professional thief who steals information by infiltrating the subconscious of his targets. He is offered a chance to have his criminal history erased as payment for the implantation of another person's idea into a target's subconscious.")
                        .padding()
                        .navigationTitle("Inception")
                }
            }
        }
    }
}

#Preview {
    FavView()
}
