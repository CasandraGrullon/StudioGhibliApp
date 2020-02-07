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
        search.barTintColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
        return search
    }()
    public lazy var aboutLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont(name: "Avenir Heavy", size: 18)
        label.text = """
        Studio Ghibli was founded in 1985 by directors Hayao Miyazaki, Isao Takahata and producer Toshio Suzuki.
        Since its opening, Studio Ghibli has released over 20 animated films and shorts and has become one of the most highly acclaimed animation studios in the world.
        """
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
        searchBarConstraints()
        aboutLabelConstraints()
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
    private func aboutLabelConstraints() {
        addSubview(aboutLabel)
        aboutLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            aboutLabel.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -50),
            aboutLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            aboutLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20)
        ])
    }

}
