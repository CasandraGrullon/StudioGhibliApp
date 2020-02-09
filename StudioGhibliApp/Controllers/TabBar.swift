//
//  TabBar.swift
//  StudioGhibliApp
//
//  Created by casandra grullon on 2/7/20.
//  Copyright © 2020 casandra grullon. All rights reserved.
//

import UIKit

class TabBar: UITabBarController {

    private lazy var searchVC: SearchVC = {
       let viewController = SearchVC()
        viewController.tabBarItem = UITabBarItem(title: "Search", image: UIImage(systemName: "magnifyingglass"), tag: 0)
        return viewController
    }()
    private lazy var favoritesVC: FavoritesVC = {
       let viewController = FavoritesVC()
        viewController.tabBarItem = UITabBarItem(title: "Favorites", image: UIImage(systemName: "heart.fill"), tag: 1)
        return viewController
    }()
    override func viewDidLoad() {
        super.viewDidLoad()

        viewControllers = [UINavigationController(rootViewController: searchVC), UINavigationController(rootViewController: favoritesVC)]
    }
    


}
