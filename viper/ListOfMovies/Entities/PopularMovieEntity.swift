//
//  PopularMovieEntity.swift
//  viper
//
//  Created by Luis Humberto on 05/03/24.
//

import Foundation

struct PopularMovieEntity: Decodable {
    
    enum CodingKeys: String, CodingKey {
        case id, title, overview
        case imageURL = "poster_path"
        case votes = "vote_average"
    }
    
    var id: Int
    var title: String
    var overview: String
    var imageURL: String
    var votes: Double
    
}
