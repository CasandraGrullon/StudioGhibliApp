//
//  Ghibli.swift
//  StudioGhibliApp
//
//  Created by casandra grullon on 2/7/20.
//  Copyright © 2020 casandra grullon. All rights reserved.
//

import Foundation
struct Results: Codable {
    let ghibli: [Ghibli]
    enum CodingKeys: String, CodingKey {
        case ghibli = ""
    }
}
struct Ghibli: Codable {
    let id: String
    let title: String
    let description: String
    let director: String
    let producer: String
    let releaseDate: String
    let rating: String
    
    private enum CodingKeys: String, CodingKey {
        case id
        case title
        case description
        case director
        case producer
        case releaseDate = "release_date"
        case rating = "rt_score"
    }
}
