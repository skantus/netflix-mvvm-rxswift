import UIKit

class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        UITabBar.appearance().barTintColor = .black
        UITabBar.appearance().tintColor = .white
        createTabbarView()
    }
    
    func createTabbarView() {
        let tabItemOne = UITabBarItem()
        tabItemOne.title = "Movies"
        tabItemOne.image = UIImage(named: "Stores")
        
        let tabControllerOne = MoviesListController()
        tabControllerOne.tabBarItem = tabItemOne
        
        let tabItemTwo = UITabBarItem()
        tabItemTwo.title = "Video"
        tabItemTwo.image = UIImage(named: "Home")
        
        let tabControllerTwo = HomeController()
        tabControllerTwo.tabBarItem = tabItemTwo
        
        let tabItemThree = UITabBarItem()
        tabItemThree.title = "Downloads"
        tabItemThree.image = UIImage(named: "Gift")
        
        let tabControllerThree = DownloadsController()
        tabControllerThree.tabBarItem = tabItemThree
        
        self.setViewControllers([tabControllerOne, tabControllerTwo, tabControllerThree], animated: true)
    }
}
