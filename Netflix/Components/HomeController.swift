//
//  HomeController.swift
//  Pulse
//
//  Created by Alejo Castaño on 01/03/2020.
//  Copyright © 2020 Alejo Castaño. All rights reserved.
//

import UIKit
import AVFoundation
import FirebaseAuth
import BMPlayer
import MaterialComponents.MaterialAppBar
import MaterialComponents.MaterialCollections

class HomeController: MDCCollectionViewController {
    
    let appBar = MDCAppBar()
    let card = MDCCard()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        self.tabBarController?.tabBar.isHidden = false
        setupContentView()
        
        let imageView = UIImageView()
        card.addSubview(imageView)
    }
    
    @objc func onSignOutPress() {
        try? Auth.auth().signOut()
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
