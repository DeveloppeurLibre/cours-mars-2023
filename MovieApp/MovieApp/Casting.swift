//
//  Casting.swift
//  MovieApp
//
//  Created by Quentin Cornu on 24/03/2023.
//

import Foundation

class Casting: ObservableObject {
    @Published var actors: [Actor]
    
    init(actors: [Actor]) {
        self.actors = actors
    }
}
