//
//  MoviesViewModel.swift
//  Netflix
//
//  Created by Alejo Castaño on 09/08/2020.
//  Copyright © 2020 Alejo Castaño. All rights reserved.
//

import Foundation
import RxSwift

class MoviesViewModel {
    
    private var networkManager = NetworkManager()
    
    func getListMoviesData() -> Observable<[Movie]> {
        return networkManager.getPopularMovies()
    }
}
