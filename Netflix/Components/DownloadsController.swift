import AVKit

class DownloadsController: UIViewController {
    
    override func viewDidLoad() {
        let title: UILabel = UILabel(frame: CGRect(x: 140, y: 300, width: 200, height: 200))
        title.text = "Downloads"
        title.textColor = .white
        view.addSubview(title)
    }
    
}
