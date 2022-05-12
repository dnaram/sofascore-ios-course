//
//  GitHubTabBarController.swift
//  Academy
//
//  Created by Marko Andreis on 12.05.2022..
//

import UIKit

class GitHubTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tabBar.tintColor = .green
        
        let searchNav    = generateNavController(vc: SearchViewController(), title: "Search")
        let favoritesNav = generateNavController(vc: FavoritesViewController(), title: "Favorites")
        
        UINavigationBar.appearance().prefersLargeTitles = true
        viewControllers = [searchNav, favoritesNav]
    }
    
    fileprivate func generateNavController(vc: UIViewController, title: String) -> UINavigationController {
        vc.navigationItem.title = title
        let navController = UINavigationController(rootViewController: vc)
        navController.title = title
        
        navController.tabBarItem.image = UIImage(systemName: title == "Search" ? "magnifyingglass" : "star.fill")
        return navController
    }
}
