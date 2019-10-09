//
//  TableViewController.swift
//  ColorBlindTest
//
//  Created by campstud on 7/18/18.
//  Copyright © 2018 campstud. All rights reserved.
//

import UIKit
import Firebase

class TableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var itemListData: Array<String> = []
    
    var retakeVariable = false
    
    var tableNeedsLoad: Bool = false
    var cellsCreated: Bool = false
    
    var selectedList: Array<String> = []
    
    var selectedName: String = ""
    var selectedCondition: String = ""
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemListData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "resultCell", for: indexPath)
        cell.textLabel?.text = itemListData[indexPath.row]
        cellsCreated = true
        return cell
    }
    
    /*func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        let valueToBeRemoved = itemListData[indexPath.row]
        let removeKey = valueToBeRemoved + "key"
        let listReference = Database.database().reference().child("ItemList").child(removeKey)
        listReference.removeValue()
    }*/
    
    
    @IBOutlet weak var resultsTable: UITableView!
    @IBAction func add(_ sender: Any) {
        
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
        resultsTable.delegate = self
        resultsTable.dataSource = self
        //self.resultsTable.reloadData()
        print(itemListData)
        // Do any additional setup after loading the view.
        print(selectedName + selectedCondition)
        navigationItem.hidesBackButton = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        //if tableNeedsLoad == true && cellsCreated == true{
            self.resultsTable.reloadData()
        //}
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
