//
//  SearchVC.swift
//  StudioGhibliApp
//
//  Created by casandra grullon on 2/7/20.
//  Copyright © 2020 casandra grullon. All rights reserved.
//

import UIKit

class SearchVC: UIViewController {

    private var searchView = SearchView()
    
    var ghiblis = [Ghibli]() {
        didSet {
            self.searchView.moviesCollection.reloadData()
        }
    }
    var searchQuery = String() {
        didSet {
            ghiblis = ghiblis.filter {$0.title.lowercased() == searchQuery.lowercased()}
        }
    }
    
    var numberOfSections = [[Ghibli]]()
    
    override func loadView() {
        view = searchView
        makeSections()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    private func getMovies() {
        ghiblis = [GhibliAPIClient.getMovies()]
    }
    
    private func makeSections() {
        var miyazakiSection: [Ghibli]
        var takahataSection: [Ghibli]
        var otherSection: [Ghibli]
        for movie in ghiblis {
            if movie.director == "Hayao Miyazaki" {
                miyazakiSection.append(movie)
                numberOfSections.append(miyazakiSection)
            } else if movie.director == "Isao Takahata" {
                takahataSection.append(movie)
                numberOfSections.append(takahataSection)
            } else {
                otherSection.append(movie)
                numberOfSections.append(otherSection)
            }
        }
    }
    
}
extension SearchVC: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        searchQuery = textField.text ?? "Spirited Away"
        textField.resignFirstResponder()
        return true
    }
}
extension SearchVC: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return numberOfSections[section].count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        <#code#>
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        
        return numberOfSections.count
    }
    
    
}
extension SearchVC: UICollectionViewDelegateFlowLayout {
    
}
