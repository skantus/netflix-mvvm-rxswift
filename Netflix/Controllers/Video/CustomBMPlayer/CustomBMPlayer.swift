import UIKit
import BMPlayer

class CustomBMPlayer: UIView {
    
    var textTest: String?
    
    override init(frame: CGRect){
        super.init(frame: frame)
        
        let title: UILabel = UILabel(frame: CGRect(x: 120, y: 200, width: 200, height: 200))
        title.text = self.textTest ?? "aaaaa"
        self.addSubview(title)
        
        playerView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func playerView() {
        let player = BMPlayer()
        self.addSubview(player)
          
        let videoUrl = URL(string: "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4")
        // https://bitdash-a.akamaihd.net/content/sintel/subtitles/subtitles_fr.vtt
        // https://www.hosting/1392.vtt
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
    
        player.snp.makeConstraints { (make) in
            // make.top.equalTo(view).offset(44)
            // make.left.right.equalTo(view)
            make.height.equalTo(player.snp.width).multipliedBy(9.0 / 16.0).priority(750)
        }

        // Back button event
        player.backBlock = { [unowned self] (isFullScreen) in
            if isFullScreen == true { return }
            // let _ = self.navigationController?.popViewController(animated: true)
        }
    }
    
}
