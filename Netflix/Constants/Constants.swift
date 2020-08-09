//
//  Constants.swift
//  Netflix
//
//  Created by Alejo Castaño on 09/08/2020.
//  Copyright © 2020 Alejo Castaño. All rights reserved.
//

import Foundation

struct Constants {
    
    static let apiKey = "?api_key=b31879dd1b2149700c74258766b20145"
    
    struct URL {
        static let base = "https://api.themoviedb.org/"
        static let urlImages = "https://image.tmdb.org/t/p/w200"
    }
    
    struct EndPoints {
        static let urlListPopularMovies = "3/movie/popular"
        static let urlDetailmovie = "3/movie/"
    }
}
