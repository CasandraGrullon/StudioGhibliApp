//
//  MiyazakiCellTableViewCell.swift
//  StudioGhibliApp
//
//  Created by casandra grullon on 11/18/19.
//  Copyright © 2019 casandra grullon. All rights reserved.
//

import UIKit

class MiyazakiCellTableViewCell: UITableViewCell {

    @IBOutlet weak var movieNameLabel: UILabel!
    @IBOutlet weak var movieDateLabel: UILabel!
    @IBOutlet weak var moviePicture: UIImageView!
    
    func nameCell(for movie: MiyazakiFilm ) {
        movieNameLabel.text = movie.name
        movieDateLabel.text = movie.releaseDate
        let image = String(movie.picture)
        moviePicture.image = UIImage(named: image)
    }

}
