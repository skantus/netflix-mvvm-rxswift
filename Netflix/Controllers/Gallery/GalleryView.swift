//
//  GalleryView.swift
//  Netflix
//
//  Created by Alejo Castaño on 21/03/2020.
//  Copyright © 2020 Alejo Castaño. All rights reserved.
//

import UIKit

extension GalleryController {
    
    func logo() -> UIView {
        let img = UIImageView()
        img.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        img.contentMode = .scaleAspectFit
        img.clipsToBounds = true
        img.image = UIImage(named: "logo")
        img.center.x = 70
        img.center.y = 70
        return img
    }
    
}
