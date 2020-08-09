import UIKit
import FirebaseAuth

class LoginViewController: UIViewController {
    var emailText =  UITextField()
    var passwordText =  UITextField()
    
    var vSpinner : UIView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupContentView()
    }
        
    func showAlert(_ message: String) {
        let alertController = UIAlertController(title: "Message", message: message, preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertAction.Style.default, handler: nil))
        self.present(alertController, animated: true, completion: nil)
    }
    
    @objc func onSignInPress() {
        guard let email = self.emailText.text, let password = self.passwordText.text else {
            self.showAlert("email/password can't be empty")
            return
        }
        
        Auth.auth().signIn(withEmail: email, password: password) { [weak self] authResult, error in
            if (error != nil) {
                self?.showAlert("\(error?.localizedDescription ?? "Unknow error")")
                return
            }

            self?.navigationController?.pushViewController(TabBarController(), animated: true)
        }
    }
    
    @objc func goBack() {
        self.navigationController?.popViewController(animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
