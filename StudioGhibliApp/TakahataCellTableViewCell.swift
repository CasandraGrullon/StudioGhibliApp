//
//  TakahataCellTableViewCell.swift
//  StudioGhibliApp
//
//  Created by casandra grullon on 11/19/19.
//  Copyright © 2019 casandra grullon. All rights reserved.
//

import UIKit

class TakahataCellTableViewCell: UITableViewCell {

    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var movieNameLabel: UILabel!
    @IBOutlet weak var movieRelaseDateLabel: UILabel!
    
    func configureCell(for movie: TakahataFilm) {
        movieImageView.image = UIImage(named: movie.picture.description)
        movieNameLabel.text = movie.name
        movieRelaseDateLabel.text = movie.releaseDate
    }

}
