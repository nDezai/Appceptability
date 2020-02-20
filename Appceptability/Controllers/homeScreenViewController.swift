//
//  homeScreenViewController.swift
//  Appceptability
//
//  Created by Neel Desai on 11/02/2020.
//  Copyright © 2020 Neel Desai. All rights reserved.
//

import UIKit

class homeScreenViewController: UIViewController {

    @IBOutlet weak var createButton: UIButton!
    @IBOutlet weak var performButton: UIButton!
    @IBOutlet weak var viewButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.hidesBackButton = true
    }

}
