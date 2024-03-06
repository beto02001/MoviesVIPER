//
//  PopularMovieResponseEntity.swift
//  viper
//
//  Created by Luis Humberto on 06/03/24.
//

import Foundation

struct PopularMovieResponseEntity: Decodable {
    let results: [PopularMovieEntity]
}
