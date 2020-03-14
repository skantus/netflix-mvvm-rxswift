import UIKit
import BMPlayer

extension HomeController {
    
    func configureAppBar() {
        styler.cellStyle = .card

        addChild(appBar.headerViewController)
        appBar.headerViewController.headerView.backgroundColor = .black
        appBar.headerViewController.headerView.trackingScrollView = self.collectionView
        appBar.navigationBar.tintColor = .white
       
        appBar.addSubviewsToParent()
   
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Logout",
                                                           style: .plain,
                                                           target: self,
                                                           action: #selector(onSignOutPress))
       
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "_",
                                                          style: .plain,
                                                          target: self,
                                                          action: nil)
        navigationItem.leftBarButtonItem?.tintColor = .black
    }
    
    func configurePlayer() {
        let player = BMPlayer()
        view.addSubview(player)
          
        let videoUrl = URL(string: "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4")
        // https://bitdash-a.akamaihd.net/content/sintel/subtitles/subtitles_fr.vtt
        // https://www.domain.com/api/v2/video_item_/xyz.vtt
        let vttURL = URL(string: "https://bitdash-a.akamaihd.net/content/sintel/subtitles/subtitles_fr.vtt")!
    
        // let token: String = "xyz"
        /* let header = [
            "content-type": "application/json",
            "authorization": "Bearer \(token)"
        ] */
        // let options = ["AVURLAssetHTTPHeaderFieldsKey": header]
        let asset = BMPlayerResource(name: "Google ChromeCast",
                                     definitions: [BMPlayerResourceDefinition(url: videoUrl!, definition: "480p"/*, options: options*/)],
                                          cover: nil,
                                          subtitles: BMSubtitles(url: vttURL))
          
        player.setVideo(resource: asset)
    
        player.pause()
        
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
