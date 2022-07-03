//
//  WelcomeViewController.swift
//  LogInApp
//
//  Created by Игорь Соколов on 03.07.2022.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    
    var welcomeLabelIntermediary: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome, \(welcomeLabelIntermediary ?? " ")!"
    }
    @IBAction func logOutButtonPressed() {
        dismiss(animated: true)
    }
}
