//
//  Window.swift
//  Pulse
//
//  Created by Alejo Castaño on 02/03/2020.
//  Copyright © 2020 Alejo Castaño. All rights reserved.
//
import UIKit

extension UIWindow {
    static var key: UIWindow? {
        if #available(iOS 13, *) {
            return UIApplication.shared.windows.first { $0.isKeyWindow }
        } else {
            return UIApplication.shared.keyWindow
        }
    }
}
