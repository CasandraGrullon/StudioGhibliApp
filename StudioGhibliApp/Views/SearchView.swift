//
//  SearchView.swift
//  StudioGhibliApp
//
//  Created by casandra grullon on 2/7/20.
//  Copyright © 2020 casandra grullon. All rights reserved.
//

import UIKit

class SearchView: UIView {
    
    public lazy var searchBar: UISearchBar = {
        let search = UISearchBar()
        search.placeholder = "search for movie"
        search.tintColor = .white
        search.barTintColor = #colorLiteral(red: 0.0700783506, green: 0.7016590238, blue: 0.9675981402, alpha: 1)
        return search
    }()
    public lazy var opaqueView: UIView = {
       let view = UIView()
        view.backgroundColor = .black
        view.alpha = 0.2
        return view
    }()
    public lazy var ghibliLogo: UIImageView = {
        let imageView = UIImageView()
        imageView.image = #imageLiteral(resourceName: "logo")
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    public lazy var moviesCollection: UICollectionView = {
       let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
       let cv = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
        cv.backgroundColor = .clear
       return cv
    }()
//    public lazy var aboutLabel: UILabel = {
//        let label = UILabel()
//        label.textAlignment = .center
//        label.textColor = .white
//        label.numberOfLines = 0
//        label.font = UIFont(name: "Lao Sangam MN", size: 20)
//        label.text = """
//        Studio Ghibli was founded in 1985 by directors Hayao Miyazaki, Isao Takahata and producer Toshio Suzuki.
//        Since its opening, Studio Ghibli has released over 20 animated films and shorts and has become one of the most highly acclaimed animation studios in the world.
//        """
//        return label
//    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        commonInit()
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    private func commonInit() {
        
        logoImageConstraints()
        searchBarConstraints()
        opaqueViewCOnstraints()
        collectionViewConstraints()
        //aboutLabelConstraints()
    }
    
    private func logoImageConstraints() {
        addSubview(ghibliLogo)
        ghibliLogo.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            ghibliLogo.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            ghibliLogo.trailingAnchor.constraint(equalTo: trailingAnchor),
            ghibliLogo.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 410),
            ghibliLogo.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor)
        ])
    }
    private func opaqueViewCOnstraints() {
        addSubview(opaqueView)
        opaqueView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            opaqueView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            opaqueView.trailingAnchor.constraint(equalTo: trailingAnchor),
            opaqueView.leadingAnchor.constraint(equalTo: leadingAnchor),
            opaqueView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor)
        ])
    }
    private func searchBarConstraints() {
        addSubview(searchBar)
        searchBar.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            searchBar.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            searchBar.leadingAnchor.constraint(equalTo: leadingAnchor),
            searchBar.trailingAnchor.constraint(equalTo: trailingAnchor)
        ])
    }
    private func collectionViewConstraints() {
        addSubview(moviesCollection)
        moviesCollection.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            moviesCollection.topAnchor.constraint(equalTo: searchBar.bottomAnchor),
            moviesCollection.trailingAnchor.constraint(equalTo: trailingAnchor),
            moviesCollection.leadingAnchor.constraint(equalTo: leadingAnchor),
            moviesCollection.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor)
        ])
    }
//    private func aboutLabelConstraints() {
//        addSubview(aboutLabel)
//        aboutLabel.translatesAutoresizingMaskIntoConstraints = false
//        
//        NSLayoutConstraint.activate([
//            aboutLabel.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -50),
//            aboutLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
//            aboutLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20)
//        ])
//    }
    
}
