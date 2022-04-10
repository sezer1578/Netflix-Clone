//
//  ViewController.swift
//  Netflix Clone
//
//  Created by Sezer Özaltun on 8.04.2022.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemYellow
        
        //TabBar Click Events
        let vc1 = UINavigationController(rootViewController: HomeViewController())
        let vc2 = UINavigationController(rootViewController: UpComingViewController())
        let vc3 = UINavigationController(rootViewController: SearchViewController())
        let vc4 = UINavigationController(rootViewController: DownloadsViewController())
        
        //TabBar set icon
        vc1.tabBarItem.image = UIImage(systemName: "house")
        vc2.tabBarItem.image = UIImage(systemName: "play.rectangle.on.rectangle")
        vc3.tabBarItem.image = UIImage(systemName: "magnifyingglass")
        vc4.tabBarItem.image = UIImage(systemName: "arrow.down.circle")
        
        //TabBar set title
        vc1.title = "Anasayfa"
        vc2.title = "Yeni ve Popüler"
        vc3.title = "Ara"
        vc4.title = "İndirilenler"
        
        tabBar.tintColor = .label
        
        //Set Screens on the TabBar
        setViewControllers([vc1,vc2,vc3,vc4], animated: true)
    }


}

