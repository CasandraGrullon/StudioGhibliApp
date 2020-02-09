//
//  GhibliAPIClient.swift
//  StudioGhibliApp
//
//  Created by casandra grullon on 2/9/20.
//  Copyright © 2020 casandra grullon. All rights reserved.
//

import Foundation
import NetworkHelper

struct GhibliAPIClient {
    static func getMovies() -> Ghibli {
        var ghibli: Ghibli!
        guard let fileURL = Bundle.main.url(forResource: "GhibliJson", withExtension: "json") else {
            fatalError("could not get url")
        }
        
        do {
           let data = try Data(contentsOf: fileURL)
            let results = try JSONDecoder().decode(Ghibli.self, from: data)
            ghibli = results
        } catch {
            print("decoding error \(error)")
            
        }
        return ghibli
    }
}

