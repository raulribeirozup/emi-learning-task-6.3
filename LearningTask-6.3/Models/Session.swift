//
//  Session.swift
//  LearningTask-6.3
//
//  Created by Raul Ribeiro on 21/11/22.
//

import Foundation

enum TypeFilm: String {
    case subtitled = "Legendado"
    case dubbed = "Dublado"
}

struct Session {
    let dateTime: Date
    let type: TypeFilm
    let movie: Movie
    
    init(dateTime: Date, type: TypeFilm, movie: Movie) {
        self.dateTime = dateTime
        self.type = type
        self.movie = movie
    }
}
