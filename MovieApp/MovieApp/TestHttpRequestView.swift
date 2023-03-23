//
//  TestHttpRequestView.swift
//  MovieApp
//
//  Created by Quentin Cornu on 23/03/2023.
//

import SwiftUI

struct TestHttpRequestView: View {

    let dataURL = URL(string: "https://api.themoviedb.org/3/movie/popular?api_key=ee6b2b9e0970948e6741d6b7985191fb")!
    
    @State private var textContent = "Loading..."
    
    @State private var movieTitles: [String] = []
    
    var body: some View {
        List {
            ForEach(movieTitles, id: \.self) { title in
                Text(title)
            }
            Button {
                printMovieTitles()
            } label: {
                Text("Load movies")
            }

        }
    }
    
    func printMovieTitles() {
        Task {
            // 1 - Faire un appel HTTP
            let (data, _) = try await URLSession.shared.data(from: dataURL)
            
            // Méthode à la main
            do {
                let json = try JSONSerialization.jsonObject(with: data)
                // json est au format Any

                let popularMoviesResult = json as! [String: Any]

                let results = popularMoviesResult["results"] as! [Any]

                for result in results {
                    let movie = result as! [String: Any]
                    let title = movie["title"] as! String
                    movieTitles.append(title)
                }
            } catch {
                print("❌ Erreur de serialisation")
            }
            
        }
    }
        
    func loadMovies() {
        Task {
            let (data, _) = try await URLSession.shared.data(from: dataURL)
            // Exécuté SEULEMENT quand on a récupéré les données
            textContent = String(data: data, encoding: .utf8)!
            
            do {
                let json = try JSONSerialization.jsonObject(with: data) as! [String: Any]
            
                let results = json["results"]
                
                if results != nil {
                    let resultsData = try! JSONSerialization.data(withJSONObject: results!)
                    textContent = String(data: resultsData, encoding: .utf8)!
                }
            } catch {
                
            }
        }
    }
}

struct TestHttpRequestView_Previews: PreviewProvider {
    static var previews: some View {
        TestHttpRequestView()
    }
}
