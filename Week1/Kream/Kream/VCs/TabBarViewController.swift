//
//  TabBarViewController.swift
//  Kream
//
//  Created by 이수현 on 9/28/24.
//

import UIKit

class TabBarViewController: UITabBarController {

    let homeVC = HomeVC()
    let styleVC = StyleVC()
    let shopVC = ShopVC()
    let savedVC = SavedVC()
    let myVc = MyVC()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        homeVC.tabBarItem = UITabBarItem(title: "HOME", image: UIImage(systemName: "house"), tag: 0)
        styleVC.tabBarItem = UITabBarItem(title: "STYLE", image: UIImage(systemName: "book.pages"), tag: 1)
        shopVC.tabBarItem = UITabBarItem(title: "SHOP", image: UIImage(systemName: "cart"), tag: 2)
        savedVC.tabBarItem = UITabBarItem(title: "SAVED", image: UIImage(systemName: "bookmark"), tag: 3)
        myVc.tabBarItem = UITabBarItem(title: "MY", image: UIImage(systemName: "person"), tag: 4)
        
        self.viewControllers = [homeVC, styleVC, shopVC, savedVC, myVc]
    }
}
