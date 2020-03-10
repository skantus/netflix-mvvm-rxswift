//
//  ViewController.swift
//  Pulse
//
//  Created by Alejo Castaño on 01/03/2020.
//  Copyright © 2020 Alejo Castaño. All rights reserved.
//

import UIKit
import FirebaseAuth

class ViewController: UIViewController {

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        view.backgroundColor = .black
        navigationController?.setNavigationBarHidden(true, animated: animated)
        self.setNeedsStatusBarAppearanceUpdate()
        
        if let _ = Auth.auth().currentUser {
            navigationController?.pushViewController(TabBarController(), animated: true)
            return
        }

        view.addSubview(signInButton())
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

    @objc func navigateToSignInView() {
        navigationController?.pushViewController(LoginViewController(), animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
