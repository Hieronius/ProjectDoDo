//
//  TabBar.swift
//  ProjectDoDo
//
//  Created by Арсентий Халимовский on 22.07.2023.
//

import UIKit

final class TabBarController: UITabBarController {
    
    // MARK: Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        setupTabBar()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        
    }
    
    func setupTabBar() {
        delegate = self
        
        self.tabBar.backgroundColor = .white
        
        let menuVC = MenuScreenVC()
        let menuIcon = UITabBarItem(title: "Меню",
                                     image: UIImage(systemName: "fork.knife"),
                                     selectedImage: UIImage(systemName: "fork.knife.fill"))
        menuVC.tabBarItem = menuIcon
        
        let profileVC = ProfileScreenVC()
        let profileIcon = UITabBarItem(title: "Профиль",
                                       image: UIImage(systemName: "person.crop.circle"),
                                       selectedImage: UIImage(systemName: "person.crop.circle.fill"))
        profileVC.tabBarItem = profileIcon
        
        let contactsVC = ContactsScreenVC()
        let contactsIcon = UITabBarItem(title: "Контакты",
                                        image: UIImage(systemName: "map"),
                                        selectedImage: UIImage(systemName: "map.fill"))
        contactsVC.tabBarItem = contactsIcon
        
        let basketVC = BasketScreenVC()
        let basketIcon = UITabBarItem(title: "Корзина",
                                      image: UIImage(systemName: "cart"),
                                      selectedImage: UIImage(systemName: "cart.fill"))
        basketVC.tabBarItem = basketIcon
        
        let controllers = [menuVC, profileVC, contactsVC, basketVC]
        self.viewControllers = controllers
    }
}



// MARK: - UITabBarControllerDelegate

extension TabBarController: UITabBarControllerDelegate {
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        print("Should select viewController: \(viewController.title ?? "") ?")
        return true
    }
}
