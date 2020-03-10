//
//  TabBarController.swift
//  Pulse
//
//  Created by Alejo Castaño on 08/03/2020.
//  Copyright © 2020 Alejo Castaño. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        view.backgroundColor = .white
        
        let tabItemOne = UITabBarItem()
        tabItemOne.title = "Home"
        tabItemOne.image = UIImage(named: "iconHome")
        
        let tabControllerOne = HomeController()
        tabControllerOne.tabBarItem = tabItemOne
        
        let tabItemTwo = UITabBarItem()
        tabItemTwo.title = "Downloads"
        tabItemTwo.image = UIImage(named: "downloadsTab")
        
        let tabControllerTwo = DownloadsController()
        tabControllerTwo.tabBarItem = tabItemTwo
        
        self.setViewControllers([tabControllerOne, tabControllerTwo], animated: true)
    }
    
}
