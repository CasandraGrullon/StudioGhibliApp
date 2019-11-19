//
//  MiyazkiVC.swift
//  StudioGhibliApp
//
//  Created by casandra grullon on 11/17/19.
//  Copyright © 2019 casandra grullon. All rights reserved.
//

import UIKit

class MiyazkiVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var mhfilms = [MiyazakiFilm]() {
        didSet {
            tableView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
    }


   

}

extension MiyazkiVC: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mhfilms.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "miyazakiCell", for: indexPath) as? MiyazakiCellTableViewCell else {
            fatalError("miyazaki cell issues")
        }
        
        let film = mhfilms[indexPath.row]
        
        cell.nameCell(for: film)
        
        return cell
    }
    
}
