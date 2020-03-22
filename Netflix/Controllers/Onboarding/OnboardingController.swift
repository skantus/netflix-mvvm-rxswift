//
//  OnboardingController.swift
//  Netflix
//
//  Created by Alejo Castaño on 13/03/2020.
//  Copyright © 2020 Alejo Castaño. All rights reserved.
//

import UIKit
import FirebaseAuth
import Onboard

class OnboardingController: UIViewController {

    var onboardingVC = OnboardingViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupContentView()
    }

   @objc func navigateToSignInView() {
        navigationController?.pushViewController(LoginViewController(), animated: true)
   }

   override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
   }
    
}
