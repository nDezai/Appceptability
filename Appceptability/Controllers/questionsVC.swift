//
//  questionsViewController.swift
//  Appceptability
//
//  Created by Neel Desai on 12/02/2020.
//  Copyright © 2020 Neel Desai. All rights reserved.
//

import UIKit
import Firebase

class questionsVC: UIViewController {
    
    @IBOutlet weak var saveAndContinueButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setUpElement()
    }
    
// MARK: - Save & Continue Function
    
    @IBAction func savePressed(_ sender: UIButton) {
    }
    
    
// MARK: - Other Functions
    
    func setUpElement() {
        
        // Style the elements
        Utilities.styleFilledButton(saveAndContinueButton)
    }

}
