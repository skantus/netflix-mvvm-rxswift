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
        let button = UIButton()
        button.frame = CGRect(x: 0, y: 0, width: view!.bounds.width * 0.9, height: 50)
        button.backgroundColor = .red
        button.titleLabel?.font = UIFont(name: "Arial", size: 15)
        button.setTitle("Sign In", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.layer.cornerRadius = 3
        button.center.x = view.center.x
        button.center.y = 440
        button.addTarget(self, action: #selector(onSignInPress), for: .touchUpInside)
        return button
    }

    func navigationBar() -> UINavigationBar{
        let screenSize: CGRect = UIScreen.main.bounds        
        let navBar = UINavigationBar(frame: CGRect(x: 0, y: UIDevice.isIphoneX ? 50 : 20, width: Int(screenSize.width), height: 44))
        navBar.tintColor = .white
        
        UINavigationBar.appearance().shadowImage = UIImage()
        
        navBar.barTintColor = .black
        navBar.isTranslucent = false
        let navigationItem = UINavigationItem(title: "")
    
        navigationItem.leftBarButtonItem  = UIBarButtonItem(barButtonSystemItem: .cancel ,target: nil, action: #selector(goBack))
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Ayuda", style: .plain, target: self, action: nil)
        
        navBar.setItems([navigationItem], animated: false)
        return navBar
    }
    
    func setupContentView() {
        view.backgroundColor = .black
        view.addSubview(navigationBar())
        view.addSubview(logoView())
        view.addSubview(emailTextField())
        view.addSubview(passwordTextField())
        view.addSubview(signInButton())
    }
}
