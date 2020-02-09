//
//  GhibliCell.swift
//  StudioGhibliApp
//
//  Created by casandra grullon on 2/9/20.
//  Copyright © 2020 casandra grullon. All rights reserved.
//

import UIKit

class GhibliCell: UICollectionViewCell {
    public lazy var movieImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "film")
        return imageView
    }()
    public lazy var titleLabel: UILabel = {
       let label = UILabel()
        label.textAlignment = .center
        label.font = UIFont(name: "Lao Sangam MN", size: 20)
        label.numberOfLines = 0
        label.textColor = .white
        return label
    }()

    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        commonInit()
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    private func commonInit() {
        imageConstraints()
        labelConstraint()
    }

    private func imageConstraints() {
        addSubview(movieImage)
        movieImage.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            movieImage.topAnchor.constraint(equalTo: topAnchor),
            movieImage.trailingAnchor.constraint(equalTo: trailingAnchor),
            movieImage.leadingAnchor.constraint(equalTo: leadingAnchor),
            movieImage.heightAnchor.constraint(equalToConstant: 250)
        ])
    }
    private func labelConstraint() {
        addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: movieImage.bottomAnchor, constant: 8),
            titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8)
        ])
    }
    
    public func configureCell(for movie: Ghibli){
        titleLabel.text = movie.title
    }
    
    
}
