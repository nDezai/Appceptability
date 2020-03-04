//
//  study1VC.swift
//  Appceptability
//
//  Created by Neel Desai on 04/03/2020.
//  Copyright © 2020 Neel Desai. All rights reserved.
//

import UIKit

class study1VC: UIViewController {
    
    @IBOutlet weak var idTF: UITextField!
    @IBOutlet weak var sampleTF: UITextField!
    @IBOutlet weak var ageTF: UITextField!
    @IBOutlet weak var countryTF: UITextField!
    @IBOutlet weak var continueButton: UIButton!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.hidesBackButton = true
        setUpElements()
    }
    
    @IBAction func continueButtonPressed(_ sender: UIButton) {
        
        self.performSegue(withIdentifier: K.contStudySegue, sender: self)
    }
    
    // MARK: - Other Functions
    
    func setUpElements() {
        
        // Style the elements
        Utilities.styleTextField(idTF)
        Utilities.styleTextField(sampleTF)
        Utilities.styleTextField(ageTF)
        Utilities.styleTextField(countryTF)
        Utilities.styleFilledButton(continueButton)
    }
}
