//
//  participantsAndSampleSizeViewController.swift
//  Appceptability
//
//  Created by Neel Desai on 12/02/2020.
//  Copyright © 2020 Neel Desai. All rights reserved.
//

import UIKit
import Firebase

class participantsAndSampleSizeVC: UIViewController {
    
    @IBOutlet weak var participantSlider: UISlider!
    @IBOutlet weak var participantNumberTF: UITextField!
    
    @IBOutlet weak var sampleSlider: UISlider!
    @IBOutlet weak var sampleNumberTF: UITextField!
    
    @IBOutlet weak var saveAndContinueButton: UIButton!
    
    var docRef: DocumentReference? = nil
    let newDocumentID = Auth.auth().currentUser?.uid // provides UID based on currently logged in user.
    
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
        
        docRef = Firestore.firestore().document("users/\(String(describing: newDocumentID))/registration/participantsAndSample")
        // describing leads to 'Optional [UID]' formed in Firestore Database. Need to examine further.
        
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
    
    @IBAction func savePressed(_ sender: UIButton) {
        
        guard let participantText = participantNumberTF.text, !participantText.isEmpty else {return}
        guard let sampleText = sampleNumberTF.text, !sampleText.isEmpty else {return}
        let dataToSave: [String: Any] = ["participants": participantText, "samples": sampleText]
        
        docRef!.setData(dataToSave, merge: true) { (error) in
            if let e = error {
                print("Error saving data: \(e.localizedDescription)")
            } else {
                
                self.alertAppear()
                self.tabBarController?.selectedIndex = 1
            }
        }
    }
    // MARK: - Other Functions
    
    func alertAppear() {
        
        //Create alert
        let alert = UIAlertController(title: "Save Successful", message: "Your information has been successfully saved", preferredStyle: UIAlertController.Style.alert)

        //Add action
        alert.addAction(UIAlertAction(title: "Continue", style: UIAlertAction.Style.default, handler: nil))

        //Show alert
        self.present(alert, animated: true, completion: nil)
    }
    
    func setUpElement() {
        
        // Style the elements
        Utilities.styleFilledButton(saveAndContinueButton)
    }
}
