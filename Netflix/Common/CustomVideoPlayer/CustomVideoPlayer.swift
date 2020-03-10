import UIKit
import AVFoundation

class CustomVideoPlayer: UIViewController {
    
    var player: AVPlayer?
    var playerItem:AVPlayerItem?
    var videoAsset: AVAsset?
    var playButton:UIButton?
   
    func setPlayerItem() {
        let token: String = "xyz"
        let videoUrl = URL(string: "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4")!
        let vttURL = URL(string: "https://bitdash-a.akamaihd.net/content/sintel/subtitles/subtitles_es.vtt")!
        let videoPlusSubtitles = AVMutableComposition()
        let headers: [AnyHashable : Any] = ["content-type": "application/json", "authorization": "Bearer \(token)"]
        let subtitleAsset = AVURLAsset(url: vttURL, options: ["AVURLAssetHTTPHeaderFieldsKey": headers])
        let requiredAssetKeys = ["playable", "hasProtectedContent"]
       
        videoAsset = AVURLAsset(url: videoUrl)
       
        let subtitleTrack = videoPlusSubtitles.addMutableTrack(withMediaType: .text, preferredTrackID: kCMPersistentTrackID_Invalid)
        try? subtitleTrack?.insertTimeRange(CMTimeRangeMake(start: CMTime.zero, duration: videoAsset!.duration),
                                           of: subtitleAsset.tracks(withMediaType: .text)[0],
                                           at: CMTime.zero)
       
        let videoTrack = videoPlusSubtitles.addMutableTrack(withMediaType: .video, preferredTrackID: kCMPersistentTrackID_Invalid)
        try? videoTrack?.insertTimeRange(CMTimeRangeMake(start: CMTime.zero, duration: videoAsset!.duration),
                                        of: videoAsset!.tracks(withMediaType: .video)[0],
                                        at: CMTime.zero)
       
        let playerItem: AVPlayerItem = AVPlayerItem(asset: videoPlusSubtitles, automaticallyLoadedAssetKeys: requiredAssetKeys)
        playerItem.addObserver(self, forKeyPath: #keyPath(AVPlayerItem.status), options: [], context: nil)
        
        player = AVPlayer(playerItem: playerItem)
    }
   
    func playerLayerView() -> AVPlayerLayer {
        setPlayerItem()
        let playerLayer = AVPlayerLayer(player: player!)
        playerLayer.frame = view.bounds
        playerLayer.position.y = 180
        
        return playerLayer
    }
   
    func playButtonView() -> UIButton {
        playButton = UIButton(type: UIButton.ButtonType.system) as UIButton
        playButton!.frame = CGRect(x: 180, y:160, width: 44, height:44)
        playButton!.backgroundColor = UIColor.lightGray
        playButton!.layer.cornerRadius = 23
        playButton!.imageEdgeInsets = UIEdgeInsets(top: 2, left: 2, bottom: 2, right: 2)
        playButton!.setImage(UIImage(named: "play.png"), for: .normal)
        playButton!.tintColor = .black
        playButton!.addTarget(self, action: #selector(self.playButtonTapped(_:)), for: .touchUpInside)
        
        return playButton!
    }
   
    func playbackSlider() -> UISlider {
        let playbackSlider = UISlider(frame:CGRect(x:10, y:260, width: view.bounds.width - 20, height:20))
        let seconds: Float64 = CMTimeGetSeconds(videoAsset!.duration)
        playbackSlider.minimumValue = 0
        playbackSlider.maximumValue = Float(seconds)
        playbackSlider.isContinuous = true
        playbackSlider.tintColor = UIColor.green
        playbackSlider.addTarget(self, action: #selector(self.playbackSliderValueChanged(_:)), for: .valueChanged)
        
        return playbackSlider
    }
   
    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?,  context: UnsafeMutableRawPointer?) {
        if keyPath == #keyPath(AVPlayerItem.status) {
            let status: AVPlayerItem.Status
           
            if let statusNumber = change?[.newKey] as? NSNumber {
                status = AVPlayerItem.Status(rawValue: statusNumber.intValue)!
            } else {
                status = .unknown
            }

            // Switch over status value
            switch status {
            case .readyToPlay:
                print("---------------------> Player item is ready to play.")
                break
            case .failed:
                print("---------------------> Player item failed. See error")
                break
            case .unknown:
                print("---------------------> Player item is not yet ready")
                break
            @unknown default:
                fatalError()
            }
        }
    }
   
    @objc func playbackSliderValueChanged(_ playbackSlider:UISlider) {
        let seconds : Int64 = Int64(playbackSlider.value)
        let targetTime:CMTime = CMTimeMake(value: seconds, timescale: 1)
        player!.seek(to: targetTime)
        if player!.rate == 0 {
          player?.play()
        }
    }
      
    @objc func playButtonTapped(_ sender:UIButton) {
        if player?.rate == 0 {
            player!.play()
            playButton!.setImage(UIImage(named: "pause.png"), for: .normal)
        } else {
            player!.pause()
            playButton!.setImage(UIImage(named: "play.png"), for: .normal)
        }
    }

}
