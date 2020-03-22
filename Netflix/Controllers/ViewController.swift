//
//  ViewController.swift
//  Pulse
//
//  Created by Alejo Castaño on 01/03/2020.
//  Copyright © 2020 Alejo Castaño. All rights reserved.
//

import UIKit
import FirebaseAuth
import Onboard

class ViewController: UIViewController {
  
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)

    navigationController?.setNavigationBarHidden(true, animated: animated)
    self.setNeedsStatusBarAppearanceUpdate()

    if let _ = Auth.auth().currentUser {
      navigationController?.pushViewController(TabBarController(), animated: false)
        return
      }
      navigationController?.pushViewController(OnboardingController(), animated: false)
    }

    override var preferredStatusBarStyle: UIStatusBarStyle {
      return .lightContent
    }

    override func didReceiveMemoryWarning() {
      super.didReceiveMemoryWarning()
    }
    
}
