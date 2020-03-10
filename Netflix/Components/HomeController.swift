import UIKit
import AVFoundation
import FirebaseAuth
import BMPlayer
import MaterialComponents.MaterialAppBar

class HomeController: MDCCollectionViewController {
    
    let appBar = MDCAppBar()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        // self.tabBarController?.tabBar.isHidden = false
        setupContentView()
    }
    
    @objc func onSignOutPress() {
        try? Auth.auth().signOut()
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
