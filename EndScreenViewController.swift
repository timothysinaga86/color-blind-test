 //
 //  EndScreenViewController.swift
 //  ColorBlindTest
 //
 //  Created by campstud on 7/17/18.
 //  Copyright © 2018 campstud. All rights reserved.
 //
 
 
 import UIKit
 
 class EndScreenViewController: UIViewController {
    
    @IBOutlet weak var diagnosisLabel: UILabel!
    @IBOutlet weak var diagnosisText: UITextView!
    
    
    
    var selectedDiagnosis: String = ""
    var selectedMeaning: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.diagnosisLabel.text = self.selectedDiagnosis
        self.diagnosisText.text = self.selectedMeaning
        navigationItem.hidesBackButton = true
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    
    
 }
