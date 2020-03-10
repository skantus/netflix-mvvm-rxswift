import UIKit

extension ViewController {

    func signInButton() -> UIButton {
        let button = UIButton(type: .system)
        button.frame = CGRect(x: 0, y: 0, width: view.bounds.width * 0.9, height: 50)
        button.setTitle("Sign In", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 24)
        button.center.x = view.center.x
        button.center.y = view.center.y
        button.addTarget(self, action: #selector(navigateToSignInView), for: .touchUpInside)
        return button
    }

}
