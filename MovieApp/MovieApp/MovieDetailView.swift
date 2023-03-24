//
//  MovieDetailView.swift
//  MovieApp
//
//  Created by Quentin Cornu on 23/03/2023.
//

import SwiftUI
import Kingfisher

struct MovieDetailView: View {
    
    let movie: Movie
    
    // 1 - Créer une variable contenant les acteurs
    
    var body: some View {
        VStack {
            KFImage(movie.posterURL)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 300)
                .clipped()
            Text(movie.title)
                .font(.title)
                .bold()
            Text(movie.description)
            // Afficher la liste des acteurs OU une vue de chargement si les acteurs ne sont pas encore chargés
        }
        .onAppear {
            loadCasting()
        }
    }
    
    private func loadCasting() {
        Task {
            // 2 - Chargement des acteurs
        }
    }
}

struct MovieDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetailView(movie: .preview)
    }
}
