//
//  MoviesVC.swift
//  StudioGhibliApp
//
//  Created by casandra grullon on 2/7/20.
//  Copyright © 2020 casandra grullon. All rights reserved.
//

import UIKit

class MoviesVC: UIViewController {

    private var moviesView = MoviesView()
    
    override func loadView() {
        view = moviesView
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .orange
    }
    


}
