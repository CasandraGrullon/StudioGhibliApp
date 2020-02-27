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
            DispatchQueue.main.async {
                self.searchView.moviesCollection.reloadData()
            }
        }
    }
    var ghibliPictures = [Picture]() {
        didSet {
            DispatchQueue.main.async {
                self.searchView.moviesCollection.reloadData()
            }
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
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getMovies()
        searchView.moviesCollection.delegate = self
        searchView.moviesCollection.dataSource = self
        searchView.moviesCollection.register(GhibliCell.self, forCellWithReuseIdentifier: "ghibliCell")
    }
    
    private func getMovies() {
        GhibliAPIClient.getMovies { [weak self] (result) in
            switch result {
            case .failure(let error):
                print("could not get movies: \(error)")
            case .success(let movies):
                self?.ghiblis = movies
            }
        }
    }
    
    private func makeSections() {
        var miyazakiSection = [Ghibli]()
        var takahataSection = [Ghibli]()
        var otherSection = [Ghibli]()
        
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
        return ghiblis.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = searchView.moviesCollection.dequeueReusableCell(withReuseIdentifier: "ghibliCell", for: indexPath) as? GhibliCell else {
            fatalError("could not cast to cell")
        }
        let movie = ghiblis[indexPath.row]
        cell.backgroundColor = .white
        cell.configureCell(for: movie)
        return cell
    }
//    func numberOfSections(in collectionView: UICollectionView) -> Int {
//
//        return numberOfSections.count
//    }
    
}
extension SearchVC: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let maxsize: CGSize = UIScreen.main.bounds.size
        let itemWidth: CGFloat = maxsize.width * 0.8
        let itemHeight: CGFloat = maxsize.height * 0.30
        return CGSize(width: itemWidth, height: itemHeight)
    }
}
