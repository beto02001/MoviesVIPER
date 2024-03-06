//
//  ListOfMoviesInteractor.swift
//  viper
//
//  Created by Luis Humberto on 05/03/24.
//

import Foundation

// 490a3d3e861c94a0221be43023c2cf92
class ListOfMoviesInteractor {
    
    func getListOfMovies() async -> PopularMovieResponseEntity {
        guard let url = URL(string:"https://api.themoviedb.org/3/discover/movie?api_key=490a3d3e861c94a0221be43023c2cf92") else { return PopularMovieResponseEntity(results: [PopularMovieEntity]()) }
        let (data, _ ) = try! await URLSession.shared.data(from: url)
        return try! JSONDecoder().decode(PopularMovieResponseEntity.self, from: data)
    }
}
