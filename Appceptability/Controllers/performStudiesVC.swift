//
//  performStudiesViewController.swift
//  Appceptability
//
//  Created by Neel Desai on 03/03/2020.
//  Copyright © 2020 Neel Desai. All rights reserved.
//

import UIKit
import Firebase

class performStudiesVC: UIViewController {

    @IBOutlet weak var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpElement()
    }
    
    @IBAction func startButtonPressed(_ sender: UIButton) {
        
        self.performSegue(withIdentifier: K.startStudySegue, sender: self)
    }
    
// MARK: - Other Functions
    
    func setUpElement() {
        
        // Style the elements
        Utilities.styleFilledButton(startButton)
    }

}
