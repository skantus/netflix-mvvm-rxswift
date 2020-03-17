import UIKit

class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        view.backgroundColor = .black
        
        let tabItemOne = UITabBarItem()
        tabItemOne.title = "Gallery"
        tabItemOne.image = UIImage(named: "home")
        let tabControllerOne = GalleryController()
        tabControllerOne.tabBarItem = tabItemOne
        
        let tabItemTwo = UITabBarItem()
        tabItemTwo.title = "Video"
        tabItemTwo.image = UIImage(named: "home")
        let tabControllerTwo = HomeController()
        tabControllerTwo.tabBarItem = tabItemTwo
        
        let tabItemThree = UITabBarItem()
        tabItemThree.title = "Downloads"
        tabItemThree.image = UIImage(named: "downloads")
        let tabControllerThree = DownloadsController()
        tabControllerThree.tabBarItem = tabItemThree
        
        self.setViewControllers([tabControllerOne, tabControllerTwo, tabControllerThree], animated: true)
    }
    
}
