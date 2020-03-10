import UIKit

extension LoginViewController {
    
    func logoView() -> UIImageView {
        let img = UIImageView()
        img.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        img.contentMode = .scaleAspectFit
        img.clipsToBounds = true
        img.image = UIImage(named: "logo")
        img.center.x = view.center.x
        img.center.y = 200
        return img
    }

    func emailTextField() -> UITextField {
        emailText.frame = CGRect(x: 0, y: 0, width: self.view!.bounds.width * 0.9, height: 50)
        emailText.placeholder = "Email"
        emailText.text = ""
        emailText.autocapitalizationType = .none
        emailText.font = UIFont.systemFont(ofSize: 17)
        emailText.borderStyle = UITextField.BorderStyle.roundedRect
        emailText.autocorrectionType = UITextAutocorrectionType.no
        emailText.keyboardType = UIKeyboardType.emailAddress
        emailText.returnKeyType = UIReturnKeyType.next
        emailText.clearButtonMode = UITextField.ViewMode.whileEditing
        emailText.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
        emailText.center.x = view.center.x
        emailText.center.y = 300
        return emailText
    }
    
    func passwordTextField() -> UITextField {
       passwordText.frame = CGRect(x: 0, y: 0, width: self.view!.bounds.width * 0.9, height: 50)
       passwordText.placeholder = "Password"
       passwordText.text = ""
       passwordText.font = UIFont.systemFont(ofSize: 17)
       passwordText.borderStyle = UITextField.BorderStyle.roundedRect
       passwordText.autocorrectionType = UITextAutocorrectionType.no
       passwordText.keyboardType = UIKeyboardType.default
        passwordText.returnKeyType = UIReturnKeyType.send
       passwordText.clearButtonMode = UITextField.ViewMode.whileEditing
       passwordText.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
       passwordText.isSecureTextEntry = true
       passwordText.center.x = view.center.x
       passwordText.center.y = 360
       return passwordText
    }
    
    func signInButton() -> UIButton {
        let button = LoadingButton()
        button.frame = CGRect(x: 0, y: 0, width: self.view!.bounds.width * 0.9, height: 50)
        button.backgroundColor = .systemBlue
        button.setTitle("Sign In", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.layer.cornerRadius = 5
        button.center.x = view.center.x
        button.center.y = 440
        button.addTarget(self, action: #selector(onSignInPress), for: .touchUpInside)
        return button
    }

    func navigationBar() -> UINavigationBar{
        let screenSize: CGRect = UIScreen.main.bounds        
        let navBar = UINavigationBar(frame: CGRect(x: 0, y: UIDevice.isIphoneX ? 50 : 20, width: Int(screenSize.width), height: 44))
        navBar.tintColor = .darkGray
        
        UINavigationBar.appearance().shadowImage = UIImage()
        
        navBar.barTintColor = .white
        navBar.isTranslucent = false
        let navigationItem = UINavigationItem(title: "")
        
        // let icon: UIImage = UIImage(named: "iconBack")!
        // let buttonItem = UIBarButtonItem(image: icon, style: UIBarButtonItem.Style.done, target: nil, action: #selector(goBack))
        // let buttonItem = UIBarButtonItem(title: "Go back", style: UIBarButtonItem.Style.done, target: self, action: #selector(goBack))
        
        navigationItem.leftBarButtonItem  = UIBarButtonItem(barButtonSystemItem: .close ,target: nil, action: #selector(goBack))
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Sign up", style: .plain, target: self, action: #selector(goBack))
        
        navBar.setItems([navigationItem], animated: false)
        return navBar
    }
    
    func setupContentView() {
        view.backgroundColor = .white
        view.addSubview(navigationBar())
        view.addSubview(logoView())
        view.addSubview(emailTextField())
        view.addSubview(passwordTextField())
        view.addSubview(signInButton())
    }
}
