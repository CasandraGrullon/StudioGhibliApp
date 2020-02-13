//
//  Photo.swift
//  StudioGhibliApp
//
//  Created by casandra grullon on 2/13/20.
//  Copyright © 2020 casandra grullon. All rights reserved.
//

import Foundation

struct PictureHits: Codable {
    let hits: [Picture]
}
struct Picture: Codable {
    let largeImageURL: String
}
