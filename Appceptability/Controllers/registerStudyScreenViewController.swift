//
//  registerStudyScreenViewController.swift
//  Appceptability
//
//  Created by Neel Desai on 11/02/2020.
//  Copyright © 2020 Neel Desai. All rights reserved.
//

import UIKit
import Firebase

class registerStudyScreenViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func registerButtonPressed(_ sender: UIButton) {
        
        if let email = emailTextField.text, let password = passwordTextField.text {
            Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                if let e = error {
                    print(e)
                } else {
                    
                    //Create alert
                    let alert = UIAlertController(title: "Registration Success", message: "Your study has been successfully registered", preferredStyle: UIAlertController.Style.alert)
                    
                    //Add action
                    alert.addAction(UIAlertAction(title: "Continue", style: UIAlertAction.Style.default, handler: nil))
                    
                    //Show alert
                    self.present(alert, animated: true, completion: nil)
                    
                    //Navigate to the RegisterTabVC
                    self.performSegue(withIdentifier: K.registerSegue, sender: self)
                }
                
            }
        }
    }
}
