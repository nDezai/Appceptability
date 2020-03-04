//
//  study3VC.swift
//  Appceptability
//
//  Created by Neel Desai on 04/03/2020.
//  Copyright © 2020 Neel Desai. All rights reserved.
//

import UIKit

class study3VC: UIViewController {
    
    @IBOutlet weak var finishButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.hidesBackButton = true
        setUpElements()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    
    @IBAction func finishButtonPressed(_ sender: UIButton) {
        
        let switchViewController = self.navigationController?.viewControllers[3] as! performTabVC
        self.navigationController?.popToViewController(switchViewController, animated: true)
        
    }
    
    // MARK: - Other Functions
    
    func setUpElements() {
        
        // Style the elements
        Utilities.styleFilledButton(finishButton)
    }
}
