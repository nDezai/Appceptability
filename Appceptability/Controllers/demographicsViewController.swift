//
//  demographicsViewController.swift
//  Appceptability
//
//  Created by Neel Desai on 12/02/2020.
//  Copyright © 2020 Neel Desai. All rights reserved.
//

import UIKit
import Firebase

class demographicsViewController: UIViewController {
    
    @IBOutlet weak var participantIDSwitch: UISwitch!
    @IBOutlet weak var sampleIDSwitch: UISwitch!
    @IBOutlet weak var ageSwitch: UISwitch!
    @IBOutlet weak var locationSwitch: UISwitch!
    @IBOutlet weak var allAboveSwitch: UISwitch!
    @IBOutlet weak var saveAndContinueButton: UIButton!
    
    var docRef: DocumentReference? = nil
    let newDocumentID = Auth.auth().currentUser?.uid // provides UID based on currently logged in user
    
    override func viewWillAppear(_ animated: Bool) {
        participantIDSwitch.isOn = false
        sampleIDSwitch.isOn = false
        ageSwitch.isOn = false
        locationSwitch.isOn = false
        allAboveSwitch.isOn = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        docRef = Firestore.firestore().document("users/\(String(describing: newDocumentID))/registration/participantsAndSample")
        // describing leads to 'Optional [UID]' formed in Firestore Database. Need to examine further.
    }
    
// MARK: - Slider Functions
    
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

    // MARK: - Save & Continue Function
    
    @IBAction func savePressed(_ sender: UIButton) {
        
        // guard let participantSwitch = participantIDSwitch.isOn, !participantSwitch.isOn else {return}
        // let dataToSave: [String: Any] = ["participantSwitch": participant, "sampleSwitch": sample, "ageSwitch": age, "locationSwitch": location, "allSwitch": allAbove]
        
        // docRef!.setData(dataToSave, merge: true) { (error) in
            // if let e = error {
                // print("Error saving data: \(e.localizedDescription)")
           // } else {
                
                self.alertAppear()
                self.tabBarController?.selectedIndex = 1
            // }
        // }
        
    }
    
    // MARK: - Alert Function
    
    func alertAppear() {
        
        //Create alert
        let alert = UIAlertController(title: "Save Successful", message: "Your information has been successfully saved", preferredStyle: UIAlertController.Style.alert)

        //Add action
        alert.addAction(UIAlertAction(title: "Continue", style: UIAlertAction.Style.default, handler: nil))

        //Show alert
        self.present(alert, animated: true, completion: nil)
    }
}
