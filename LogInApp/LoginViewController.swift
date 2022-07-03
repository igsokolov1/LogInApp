//
//  ViewController.swift
//  LogInApp
//
//  Created by Игорь Соколов on 03.07.2022.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
    }
    
    @IBAction func userNameButtonPressed(_ sender: Any) {
        let alert = UIAlertController(
            title: "Oops!",
            message: "User name is User",
            preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(
            title: "OK",
            style: .default,
            handler: {(action) in
                alert.dismiss(animated: true,
                              completion: nil)}))
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func passwordButtonPressed(_ sender: Any) {
        let alert = UIAlertController(
            title: "Oops!",
            message: "Password is Password",
            preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(
            title: "OK",
            style: .default,
            handler: {(action) in
                alert.dismiss(animated: true,
                              completion: nil)}))
        present(alert, animated: true, completion: nil)
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if userNameTF.text != "User" || passwordTF.text != "Password" {
            
            let alert = UIAlertController(
                title: "Invalid login or password!",
                message: "Please, enter correct login and password!",
                preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(
                title: "OK",
                style: .default,
                handler: {(action) in
                    alert.dismiss(animated: true,
                                  completion: nil)}))
            present(alert, animated: true, completion: nil)
            
            passwordTF.text = ""
            
            return false
            
        } else {
            return true
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as?
                WelcomeViewController else { return }
        welcomeVC.welcomeLabelIntermediary = userNameTF.text
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        guard segue.source is
                WelcomeViewController else { return }
        userNameTF.text = ""
        passwordTF.text = ""
    }
}

