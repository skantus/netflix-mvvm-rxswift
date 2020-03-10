import AVKit

class DownloadsController: UIViewController {
    
    override func viewDidLoad() {
        view.backgroundColor = .white
        let title: UILabel = UILabel(frame: CGRect(x: 120, y: 300, width: 200, height: 200))
        title.text = "Downloads controller"
        view.addSubview(title)
    }
    
}
