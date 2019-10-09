//
//  PopUpViewController.swift
//  ColorBlindTest
//
//  Created by campstud on 7/18/18.
//  Copyright © 2018 campstud. All rights reserved.
//

import UIKit
import Firebase

class PopUpViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    var itemList: Array<String> = []
    var tableInitialLoad: Bool?
    @IBOutlet weak var diagnosisPicker: UIPickerView!
    @IBOutlet weak var nameText: UITextField!
    
    var name: String?
    var selectedPicker = ""
    var conditionArray: Array<String> = ["Achromatopsia", "Full color vision", "Deuteranopia", "Protanopia", "Tritanopia"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true


        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        
        return 1;
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return conditionArray.count;
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        return conditionArray[row]
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        var conditionName = conditionArray[row]
        switch conditionName
        {
        case "Achromatopsia":
            selectedPicker = "Achromatopsia"
            
        case "Full color vision":
            selectedPicker = "Full color vision"
            
        case "Deuteranopia":
            selectedPicker = "Deuteranopia"
            
        case "Protanopia":
            selectedPicker = "Protanopia"
            
        case "Tritanopia":
            selectedPicker = "Tritanopia"
            
        default:
             selectedPicker = "Achromatopsia"
        }
    }
    
    @IBAction func dataAdd(_ sender: Any) {
        name = self.nameText.text
        let listReference = Database.database().reference().child("ItemList")
            let itemName = self.name! + " - " + self.selectedPicker
            let itemKey = itemName + "key"
            let destinationRefernece = listReference.child(itemKey)
            destinationRefernece.setValue(itemName)
        
        let listNode = Database.database().reference().child("ItemList")
        listNode.observe(.value, with: { snapshot in
            var newList: [String] = []
            for item in snapshot.children {
                let data = item as! DataSnapshot
                let name = data.value as! String
                newList.append(name)
                print(name)
            }
            self.itemList = newList
            self.performSegue(withIdentifier: "finalSegue", sender: nil)
            
        })
            tableInitialLoad = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "finalSegue" {
            let dest = segue.destination as! TableViewController
            dest.itemListData = self.itemList
            dest.tableNeedsLoad = self.tableInitialLoad!
            
            
            
        }
    }
    

}
