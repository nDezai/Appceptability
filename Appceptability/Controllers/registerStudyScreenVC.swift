//
//  registerStudyScreenViewController.swift
//  Appceptability
//
//  Created by Neel Desai on 11/02/2020.
//  Copyright © 2020 Neel Desai. All rights reserved.
//

import UIKit
import Firebase

class registerStudyScreenVC: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var errorLabel: UILabel!
    @IBOutlet weak var registerButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpElements()
    }
    
    @IBAction func registerButtonPressed(_ sender: UIButton) {
        
        let error = validateFields()
        
        if error != nil {
            showError(error!)
        } else {
            
            let email = emailTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            let password = passwordTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            
            Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                if error != nil {
                    self.showError("Error creating study")
                } else {
                    
                    
                    let db = Firestore.firestore()
                    let newDocumentID = Auth.auth().currentUser?.uid
                    let newUserRef = db.collection("users").document(newDocumentID!)
                    
                    newUserRef.setData(["Study Email": email, "uid": authResult!.user.uid]) { (error) in
                        if error != nil {
                            print("Couldn't add UID data")
                        }
                    }
                    
                    self.alertAppear()
                    
                    //Navigate to the RegisterTabVC
                    self.performSegue(withIdentifier: K.registerSegue, sender: self)
                }
                
            }
        }
    }
    // MARK: - Other Functions
    
    func alertAppear() {
        
        //Create alert
        let alert = UIAlertController(title: "Registration Success", message: "Your study has been successfully registered", preferredStyle: UIAlertController.Style.alert)
        
        //Add action
        alert.addAction(UIAlertAction(title: "Continue", style: UIAlertAction.Style.default, handler: nil))
        
        //Show alert
        self.present(alert, animated: true, completion: nil)
    }
    
    // Check fields and validate that the data is correct. If everything is correct, this method returns nil, otherwise returns the error message.
    func validateFields() -> String? {
        
        if emailTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            passwordTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" {
            
            return "Please complete all fields."
        }
        
        let cleanedPassword = passwordTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        
        if Utilities.isPasswordValid(cleanedPassword) == false {
            return "Please make sure your password is at least 8 characters, contains a special character and a number."
        }
        
        return nil
    
    }
    
    func showError(_ message:String) {
        errorLabel.text = message
        errorLabel.alpha = 1
    }
    
    func setUpElements() {
        
        // Hide the Error Label
        errorLabel.alpha = 0
        
        // Style the elements
        Utilities.styleTextField(emailTextField)
        Utilities.styleTextField(passwordTextField)
        Utilities.styleFilledButton(registerButton)
    }
}
