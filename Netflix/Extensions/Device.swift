//
//  Device.swift
//  Pulse
//
//  Created by Alejo Castaño on 01/03/2020.
//  Copyright © 2020 Alejo Castaño. All rights reserved.
//

import UIKit

extension UIDevice {

    static var isIphoneX: Bool {
        var isIphoneX = false
        if #available(iOS 11.0, *) {
            if ((UIWindow.key?.safeAreaInsets.top)! > CGFloat(0.0)) {
                isIphoneX = true
            }
        }
        return isIphoneX
    }

    static var isSimulator: Bool {
        return TARGET_OS_SIMULATOR != 0
    }
}
