//
//  Downloads.swift
//  Pulse
//
//  Created by Alejo Castaño on 08/03/2020.
//  Copyright © 2020 Alejo Castaño. All rights reserved.
//

import AVKit

class DownloadsController: UIViewController {
    
    override func viewDidLoad() {
        view.backgroundColor = .white
        let title: UILabel = UILabel(frame: CGRect(x: 120, y: 300, width: 200, height: 200))
        title.text = "Downloads controller"
        view.addSubview(title)
    }
    
}
