//
//  randomViewController.swift
//  Appceptability
//
//  Created by Neel Desai on 27/02/2020.
//  Copyright © 2020 Neel Desai. All rights reserved.
//

import UIKit
import Firebase

class randomViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.hidesBackButton = true
    }
    

    @IBAction func logOutPressed(_ sender: Any) {
        logOut()
    }
        
    func logOut() {
        do {
            try Auth.auth().signOut()
            self.navigationController?.popToRootViewController(animated: true)
        } catch let signOutError as NSError {
            print("Error signing out: @%", signOutError)
        }
    }
}
