//
//  ViewController.swift
//  StudioGhibliApp
//
//  Created by casandra grullon on 11/17/19.
//  Copyright © 2019 casandra grullon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var ghibliLogo: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        ghibliLogo.image = #imageLiteral(resourceName: "A_studio_ghibli_logo")
    }
    
    var miyazakiFilms = [MiyazakiFilm]()
    var takahataFilms = [TakahataFilm]()
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let miyazaki = segue.destination as? MiyazkiVC else {
            fatalError("button did not work")
        }
        miyazaki.mhfilms = miyazakiFilms
        
        guard let takahata = segue.destination as? TakahataVC else {
            fatalError("button did not work")
        }
        takahata.itFilms = takahataFilms
        
    }

}

