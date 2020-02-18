//
//  registerStudyScreenViewController.swift
//  Appceptability
//
//  Created by Neel Desai on 11/02/2020.
//  Copyright © 2020 Neel Desai. All rights reserved.
//

import UIKit

class registerStudyScreenViewController: UIViewController {

    @IBOutlet weak var regStudyNameTF: UITextField!
    @IBOutlet weak var regStudyPasswordTF: UITextField!
    @IBOutlet weak var regStudyConfirmPasswordTF: UITextField!
    @IBOutlet weak var registerStudyButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // let client = MSClient(applicationURLString: "https://acceptabilityappios.azurewebsites.net")
    }

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
