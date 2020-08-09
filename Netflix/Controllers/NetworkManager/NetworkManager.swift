//
//  NetworkManager.swift
//  Netflix
//
//  Created by Alejo Castaño on 09/08/2020.
//  Copyright © 2020 Alejo Castaño. All rights reserved.
//

import Foundation
import RxSwift

class NetworkManager {
    
    func getPopularMovies() -> Observable<[Movie]> {
        return Observable.create { (observer) -> Disposable in
            let session = URLSession.shared
            var request = URLRequest(url: URL(string: Constants.URL.base+Constants.EndPoints.urlListPopularMovies+Constants.apiKey)!)
            
            request.httpMethod = "GET"
            request.addValue("application/json", forHTTPHeaderField: "Content-Type")
            
            session.dataTask(with: request) { (data, response, error) in
                guard let data = data, error == nil, let response = response as? HTTPURLResponse  else { return }
                
                if(response.statusCode == 200) {
                    do {
                        let decoder = JSONDecoder()
                        let movies = try decoder.decode(Movies.self, from: data)
                        
                        observer.onNext(movies.listOfMovies)
                    } catch let error {
                        observer.onError(error)
                        print("Unknow Error: \(error.localizedDescription)")
                    }
                }
                else if(response.statusCode == 401) {
                    print("Error 401")
                }
                
                observer.onCompleted()
            }.resume()
            
            return Disposables.create {
                session.finishTasksAndInvalidate()
            }
            
        }
    }
    
    func getDetailsMovies() { }
}
