import UIKit
import Onboard
import SnapKit

extension OnboardingController {

    func signInButton() -> UIButton {
        let button = UIButton()
        button.frame = CGRect(x: 0, y: 0, width: view!.bounds.width * 0.95, height: 45)
        button.backgroundColor = .red
        button.titleLabel?.font = UIFont(name: "Arial", size: 15)
        button.setTitle("INICIAR SESIÓN", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.layer.cornerRadius = 3
        button.center.x = view.center.x
        button.center.y = view.bounds.height - 60
        button.addTarget(self, action: #selector(navigateToSignInView), for: .touchUpInside)
        return button
    }
    
    func onboardingView() -> UIView {
        // MARK: --- First page ---
        let firstPage = OnboardingContentViewController(title: "¿Quieres suscribirte a Netflix?", body: "No puede suscribirte a Netflix en la app. Sabemos que no es ideal. Una vez seas miembro, puedes comenzar a ver Netflix en la app.", image: nil, buttonText: nil) { () -> Void in }
        
        firstPage.topPadding = view.bounds.width / 2 + 100
        firstPage.titleLabel.font = UIFont.boldSystemFont(ofSize: 33.0)
        firstPage.underTitlePadding = 20;
        firstPage.bodyLabel.font = UIFont.systemFont(ofSize: 20.0)
        let image = UIImage(named: "onboarding1")
        firstPage.view.backgroundColor = UIColor(patternImage: image!)

        // MARK: --- Second page ---
        let secondPage = OnboardingContentViewController(title: "Tú decides cómo lo ves", body: "En tu teléfono, tablet, computadora y TV sin costo extra.", image: UIImage(named: "onboarding2"), buttonText: nil) { () -> Void in }
        
        secondPage.topPadding = view.bounds.width / 3
        secondPage.titleLabel.font = UIFont.boldSystemFont(ofSize: 33.0)
        secondPage.bodyLabel.font = UIFont.systemFont(ofSize: 20.0)
        
        // MARK: --- Third page ---
        let thirdPage = OnboardingContentViewController(title: "Descarga y listo", body: "Disfruta online tus películas y programas favoritos en cualquier lugar.", image: UIImage(named: "onboarding3"), buttonText: nil) { () -> Void in }
        
        thirdPage.topPadding = view.bounds.width / 3
        thirdPage.titleLabel.font = UIFont.boldSystemFont(ofSize: 33.0)
        thirdPage.bodyLabel.font = UIFont.systemFont(ofSize: 20.0)
        
        // MARK: --- Fourth page ---
        let fourthPage = OnboardingContentViewController(title: "Sin contratos molestos", body: "Puedes cancelar cuando quieras", image: UIImage(named: "onboarding4"), buttonText: nil) { () -> Void in }
        
        fourthPage.topPadding = view.bounds.width / 3
        fourthPage.titleLabel.font = UIFont.boldSystemFont(ofSize: 33.0)
        fourthPage.bodyLabel.font = UIFont.systemFont(ofSize: 20.0)
        
        // MARK: --- Parent ---
        onboardingVC = OnboardingViewController(backgroundImage: nil, contents: [firstPage, secondPage, thirdPage, fourthPage])
        onboardingVC.shouldFadeTransitions = true
        onboardingVC.pageControl.currentPageIndicatorTintColor = .systemRed
        
        return onboardingVC.view
    }
    
    func navigationBar() -> UINavigationBar{
        let screenSize: CGRect = UIScreen.main.bounds
        let navBar = UINavigationBar(frame: CGRect(x: 0, y: UIDevice.isIphoneX ? 50 : 20, width: Int(screenSize.width), height: 44))
        
        UINavigationBar.appearance().shadowImage = UIImage()
        navBar.tintColor = .white
        navBar.setBackgroundImage(UIImage(), for: .default)
        navBar.shadowImage = UIImage()
        navBar.isTranslucent = true
        
        let navigationItem = UINavigationItem(title: "")
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Ayuda", style: .plain, target: self, action: nil)
        
        navBar.setItems([navigationItem], animated: false)
        return navBar
    }
    
    func logo() -> UIView {
        let img = UIImageView()
        img.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        img.contentMode = .scaleAspectFit
        img.clipsToBounds = true
        img.image = UIImage(named: "logo")
        img.center.x = 70
        img.center.y = 70
        return img
    }
    
    func setupContentView() {
        view.backgroundColor = .black
        view.addSubview(onboardingView())
        view.addSubview(signInButton())
        view.addSubview(navigationBar())
        view.addSubview(logo())
    }

}
