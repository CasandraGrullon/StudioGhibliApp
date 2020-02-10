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
    static func getMovies(completion: @escaping (Result<[Ghibli],AppError>) -> ()) {
        let endpointURL = "https://ghibliapi.herokuapp.com/films"
        guard let url = URL(string: endpointURL) else {
            completion(.failure(.badURL(endpointURL)))
            return
        }
        let request = URLRequest(url: url)
        
        NetworkHelper.shared.performDataTask(with: request) { (result) in
            switch result {
            case .failure(let error):
                completion(.failure(.networkClientError(error)))
            case .success(let data):
                do {
                    let results = try JSONDecoder().decode(Results.self, from: data)
                    completion(.success(results.ghibli))
                }catch {
                    completion(.failure(.decodingError(error)))
                }
            }
        }
        
    }
    
}

