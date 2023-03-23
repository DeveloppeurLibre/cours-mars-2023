//
//  PopularMovies.swift
//  MovieApp
//
//  Created by Quentin Cornu on 22/03/2023.
//

import SwiftUI

// 1 - Créer une vue avec un bouton "Load" ✅
// 2 - Ce bouton appelle la méthode "loadMovies()" ✅
// 3 - Cette méthode permet d'afficher X faux films
// 4 - Contrainte : rester sur la même vue

struct PopularMovies: View {
    
    @StateObject private var moviesList = MoviesList(popularMovies: [])

    var body: some View {
        // Afficher une liste de films
        // Ajouter un bouton "Load"
        if moviesList.popularMovies.isEmpty {
            Button {
                loadMovies()
            } label: {
                Text("Load")
            }
        } else {
            ScrollView {
                VStack {
                    Text("\(moviesList.popularMovies.count) films")
                        .foregroundColor(.white)
                    ForEach(moviesList.popularMovies) { movie in
                        MovieCellView(movie: movie)
                    }
                }
            }
            .background(.black)
        }
    }
    
    func loadMovies() {
        moviesList.popularMovies = [
            Movie(
                title: "Nouveau film",
                description: "Desceription",
                posterURL: URL(string: "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/ewF3IlGscc7FjgGEPcQvZsAsgAW.jpg")!,
                rating: 9.0
            ),
            Movie(
                title: "The Mandalorian",
                description: "Desceription",
                posterURL: URL(string: "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/s8lHYTNYM919rDFvMs33tOeMbYf.jpg")!,
                rating: 9.0
            ),
            Movie(
                title: "Nouveau film",
                description: "Desceription",
                posterURL: URL(string: "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/r9iMNhZYFbS3HnpmobVc4dX5U8x.jpg")!,
                rating: 9.0
            ),
        ]
        // à remplir
        // Créer X faux films -> qu'on affiche
    }
}

struct PopularMovies_Previews: PreviewProvider {
    static var previews: some View {
        PopularMovies()
    }
}
