//
//  TakahataVC.swift
//  StudioGhibliApp
//
//  Created by casandra grullon on 11/17/19.
//  Copyright © 2019 casandra grullon. All rights reserved.
//

import UIKit

class TakahataVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var itFilms = [TakahataFilm]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        itFilms = TakahataFilm.movie
        tableView.dataSource = self
    }

}

extension TakahataVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itFilms.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "takahataCell", for: indexPath) as? TakahataCellTableViewCell else {
            fatalError("takahata cell doesn't work")
        }
        let movie = itFilms[indexPath.row]
        
        cell.configureCell(for: movie)
        
        return cell
    }
}
