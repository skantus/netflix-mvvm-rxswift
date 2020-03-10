//
//  HomeView.swift
//  Pulse
//
//  Created by Alejo Castaño on 02/03/2020.
//  Copyright © 2020 Alejo Castaño. All rights reserved.
//

import UIKit
import BMPlayer

extension HomeController {
    
    func configureAppBar() {
        styler.cellStyle = .card

        addChild(appBar.headerViewController)
        appBar.headerViewController.headerView.backgroundColor = .white
        appBar.headerViewController.headerView.trackingScrollView = self.collectionView
        appBar.navigationBar.tintColor = .black
       
        appBar.addSubviewsToParent()
   
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Logout",
                                                           style: .plain,
                                                           target: self,
                                                           action: #selector(onSignOutPress))
       
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "_",
                                                          style: .plain,
                                                          target: self,
                                                          action: nil)
        navigationItem.leftBarButtonItem?.tintColor = .white
    }
    
    func configurePlayer() {
        let player = BMPlayer()
        view.addSubview(player)
          
        let videoUrl = URL(string: "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4")
        // https://bitdash-a.akamaihd.net/content/sintel/subtitles/subtitles_fr.vtt
        // https://www.domestika.org/api/v2/video_item_srts/1392.vtt
        let vttURL = URL(string: "https://bitdash-a.akamaihd.net/content/sintel/subtitles/subtitles_fr.vtt")!
    
        let token: String = "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9.eyJqdGkiOiI0NzA3OGExNS0wMjJmLTRkYjQtYTE1Zi04NDJlZDdmYWY4MzUiLCJ1c2VyIjp7ImlkIjoxMjExNTQ5LCJlbWFpbCI6InNyc2thbnR1c0BnbWFpbC5jb20ifX0.U3TYjh_np9aV_qoVpXHnAFrz3hqwoSrksYOkhfpNUNanMZCouN_rrdHWbEefY6KZolaMsHshM4GssbkJ88ZAKA"
    
        let header = [
            "content-type": "application/json",
            "authorization": "Bearer \(token)"
        ]
    
        let options = ["AVURLAssetHTTPHeaderFieldsKey": header]
        
        let asset = BMPlayerResource(name: "Google ChromeCast",
                                     definitions: [BMPlayerResourceDefinition(url: videoUrl!, definition: "480p"/*, options: options*/)],
                                          cover: nil,
                                          subtitles: BMSubtitles(url: vttURL))
          
        player.setVideo(resource: asset)
    
        player.snp.makeConstraints { (make) in
            make.top.equalTo(view).offset(100)
            make.left.right.equalTo(view)
            make.height.equalTo(player.snp.width).multipliedBy(9.0 / 16.0).priority(750)
        }

        // Back button event
        player.backBlock = { [unowned self] (isFullScreen) in
            if isFullScreen == true { return }
            let _ = self.navigationController?.popViewController(animated: true)
        }
    }
    
    func setupContentView() {
        view.backgroundColor = .white
        configureAppBar()
        configurePlayer()
    }
    
}
