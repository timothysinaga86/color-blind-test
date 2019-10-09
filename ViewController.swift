
 
 //
 //  ViewController.swift
 //  ColorBlindTest
 //
 //  Created by campstud on 7/16/18.
 //  Copyright © 2018 campstud. All rights reserved.
 //
 
 import UIKit
 
 class ViewController: UIViewController {
    var images : Array<String> = []
    var counter = 0
    var answerList: Array<String> = []
    
    var diagnosis: String = ""
    var diagnosisMeaning: String = ""
    var correct: Bool = true
    
    @IBOutlet weak var userGuess: UITextField!
    @IBOutlet weak var testPicture: UIImageView!
    @IBOutlet weak var concludeLabel: UILabel!
    @IBOutlet weak var concludeOutlet: UIButton!
    @IBOutlet weak var nextOutlet: UIButton!
    @IBOutlet weak var resultLabel2: UILabel!
    
    @IBAction func nextButton(_ sender: Any) {
        if self.userGuess.text == answerList[counter] {
            correct = true
            counter+=1
            //print(counter)
            if counter == 4  {
                //passed (normal)
                diagnosis = "You have normal vision"
                diagnosisMeaning = ""
                self.concludeLabel.text = "The results are conclusive."
                self.nextOutlet.isEnabled = false
                self.resultLabel2.text = "Click here"
                self.userGuess.isEnabled = false
                self.concludeOutlet.isEnabled = true
            }
        } else {
            self.testPicture.image = UIImage(named: "done")
            self.userGuess.text = ""
            self.userGuess.isEnabled = false
            correct = false
            self.concludeLabel.text = "The results are conclusive."
            self.nextOutlet.isEnabled = false
            self.resultLabel2.text = "Click here for results"
            self.concludeOutlet.isEnabled = true
            
            if counter == 0 {
                //totally colorblind0
                diagnosis = "You have achromatopsia."
                diagnosisMeaning = "This means that you can only see colors in black and white."
                print(diagnosis)
                return
            } else if counter == 1 {
                //red colorblind
                diagnosis = "You have protanopia."
                diagnosisMeaning = "You cannot see red cones."
            } else if counter == 2 {
                //green colorblind
                diagnosis = "You have deuteranopia."
                diagnosisMeaning = "You cannot see green cones."
            } else if counter == 3 {
                //blue colorblind
                diagnosis = "You have tritanopia."
                diagnosisMeaning = "You cannot see blue cones."
                
            }

        }
        testPicture.image = UIImage(named: self.images[counter])
        self.userGuess.text = ""
    }
    @IBAction func concludeButton(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.images = ["Plate1", "blue7", "Plate4", "Plate8", "done"  ]
        self.testPicture.image = UIImage(named: images[counter])
        self.answerList = ["12", "7", "5", "6"]
        navigationItem.hidesBackButton = true
        self.concludeOutlet.isEnabled = false
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "endSegue" {
                let dest = segue.destination as! EndScreenViewController
                dest.selectedDiagnosis = self.diagnosis
                dest.selectedMeaning = self.diagnosisMeaning
        }
    }
    
    
 }
 
 //Plate 1 - easy
 //Plate 3 - redgreen colorblind = 70, normal = 29, total blind = nothing
 //Plate 8 - normal = 6, all color blind = nothing
 //Plate 14A - redgreen colorblind = 5, else = nothing
 //blue7 -
 // redgreen means cant see red
 //

