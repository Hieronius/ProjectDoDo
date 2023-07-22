//
//  TabBar.swift
//  ProjectDoDo
//
//  Created by Арсентий Халимовский on 22.07.2023.
//

import UIKit

final class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // some code here
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Make a function for it
        
        let menuVC = MenuScreenVC()
        let menuIcon = UITabBarItem(title: "Меню",
                                    image: UIImage(named: "someImage"),
                                    selectedImage: UIImage(named: "otherImage"))
        menuVC.tabBarItem = menuIcon
        
        let profileVC = ProfileScreenVC()
        let profileIcon = UITabBarItem(title: "Профиль",
                                       image: UIImage(named: "someImage"),
                                       selectedImage: UIImage(named: "otherImage"))
        profileVC.tabBarItem = profileIcon
        
        let contactsVC = ContactsScreenVC()
        let contactsIcon = UITabBarItem(title: "Контакты",
                                        image: UIImage(named: "someImage"),
                                        selectedImage: UIImage(named: "otherImage"))
        
        let basketVC = BasketScreenVC()
        let basketIcon = UITabBarItem(title: "Корзина",
                                      image: UIImage(named: "someImage"),
                                      selectedImage: UIImage(named: "otherImage"))
        
        let controllers = [menuVC, profileVC, contactsVC, basketVC]
        self.viewControllers = controllers
    }
}
