//
//  demographicsViewController.swift
//  Appceptability
//
//  Created by Neel Desai on 12/02/2020.
//  Copyright © 2020 Neel Desai. All rights reserved.
//

import UIKit

class demographicsViewController: UIViewController {
    
    @IBOutlet weak var participantIDSwitch: UISwitch!
    @IBOutlet weak var sampleIDSwitch: UISwitch!
    @IBOutlet weak var ageSwitch: UISwitch!
    @IBOutlet weak var locationSwitch: UISwitch!
    @IBOutlet weak var allAboveSwitch: UISwitch!
    @IBOutlet weak var saveAndContinueButton: UIButton!
    
    override func viewWillAppear(_ animated: Bool) {
        allAboveSwitch.isOn = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func switchOnePressed(_ sender: UISwitch) {
        allAboveSwitch.setOn(!sender.isOn, animated: true)
    }
    
    @IBAction func switchTwoPressed(_ sender: UISwitch) {
        allAboveSwitch.setOn(!sender.isOn, animated: true)
    }
    
    @IBAction func switchThreePressed(_ sender: UISwitch) {
        allAboveSwitch.setOn(!sender.isOn, animated: true)
    }
    
    @IBAction func switchFourPressed(_ sender: UISwitch) {
        allAboveSwitch.setOn(!sender.isOn, animated: true)
    }
    
    @IBAction func allSwitchPressed(_ sender: UISwitch) {
        participantIDSwitch.setOn(!sender.isOn, animated: true)
        sampleIDSwitch.setOn(!sender.isOn, animated: true)
        ageSwitch.setOn(!sender.isOn, animated: true)
        locationSwitch.setOn(!sender.isOn, animated: true)
    }
    
}
