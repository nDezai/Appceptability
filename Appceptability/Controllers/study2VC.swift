//
//  study2VC.swift
//  Appceptability
//
//  Created by Neel Desai on 04/03/2020.
//  Copyright © 2020 Neel Desai. All rights reserved.
//

import UIKit

class study2VC: UIViewController {
    
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var faceSlider: UISlider!
    @IBOutlet weak var scoreTF: UITextField!
    @IBOutlet weak var continueButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.hidesBackButton = true
        setUpElements()
    }
    
    @IBAction func facesSliderValueChanged(_ sender: UISlider) {
    }
    
    
    @IBAction func continueButtonPressed(_ sender: UIButton) {
        
        self.performSegue(withIdentifier: K.endStudySegue, sender: self)
    }
    
    
    // MARK: - Other Functions
    
    func setUpElements() {
        
        // Style the elements
        Utilities.styleFilledButton(continueButton)
    }
    
}
