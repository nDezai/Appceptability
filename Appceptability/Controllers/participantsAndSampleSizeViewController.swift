//
//  participantsAndSampleSizeViewController.swift
//  Appceptability
//
//  Created by Neel Desai on 12/02/2020.
//  Copyright © 2020 Neel Desai. All rights reserved.
//

import UIKit

class participantsAndSampleSizeViewController: UIViewController {

    @IBOutlet weak var participantSlider: UISlider!
    @IBOutlet weak var participantNumberTF: UITextField!
    
    @IBOutlet weak var sampleSlider: UISlider!
    @IBOutlet weak var sampleNumberTF: UITextField!
    
    @IBOutlet weak var saveAndContinueButton: UIButton!
    
    override func viewWillAppear(_ animated: Bool) {
        participantSlider.value = 10
        let pSliderVal = Int(participantSlider.value)
        sampleSlider.value = 3
        let sSliderVal = Int(sampleSlider.value)
        participantNumberTF.text = "\(pSliderVal)"
        sampleNumberTF.text = "\(sSliderVal)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        participantSlider.addTarget(self, action: #selector(participantSliderValueChanged), for: UIControl.Event.valueChanged)
        sampleSlider.addTarget(self, action: #selector(sampleSliderValueChanged), for: UIControl.Event.valueChanged)
    }
    
    // MARK: - Sliders
    
    @IBAction func participantSliderValueChanged(_ sender: UISlider) {
        let participantValue = Int(participantSlider.value)
        participantNumberTF.text = "\(participantValue)"
    }
    
    
    @IBAction func sampleSliderValueChanged(_ sender: UISlider) {
        let sampleValue = Int(sampleSlider.value)
        sampleNumberTF.text = "\(sampleValue)"
    }
    
   // MARK: - Save & Continue Function
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
