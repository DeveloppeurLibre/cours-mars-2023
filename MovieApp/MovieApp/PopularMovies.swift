//
//  PopularMovies.swift
//  MovieApp
//
//  Created by Quentin Cornu on 22/03/2023.
//

import SwiftUI

// 1 - Créer une vue avec un bouton "Load"
// 2 - Ce bouton appelle la méthode "loadMovies()"
// 3 - Cette méthode permet d'afficher X faux films

struct PopularMovies: View {
    var body: some View {
        // Afficher une liste de films
        // Ajouter un bouton "Load"
        Button {
            loadMoview()
        } label: {
            Text("Load")
        }

    }
    
    func loadMoview() {
        // à remplir
        // Créer X faux films -> qu'on affiche
    }
}

struct PopularMovies_Previews: PreviewProvider {
    static var previews: some View {
        PopularMovies()
    }
}
