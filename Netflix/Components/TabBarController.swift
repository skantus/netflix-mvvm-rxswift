import UIKit

class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        view.backgroundColor = .black
        
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
