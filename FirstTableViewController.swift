//
//  FirstTableViewController.swift
//  ColorBlindTest
//
//  Created by campstud on 7/18/18.
//  Copyright © 2018 campstud. All rights reserved.
//

/*import UIKit

class FirstTableViewController: UITableViewController {

    var conditions: Array<String> = []
    
    var aList: Array<String> = []
    var pList: Array<String> = []
    var dList: Array<String> = []
    var tList: Array<String> = []
    var nList: Array<String> = []

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.conditions = ["Achromatopsia:", "Protanopia:", "Deuteranopia:", "Tritanopia:", "Full color vision:"]
        // Do any additional setup after loading the view.
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.conditions.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = self.tableView.dequeueReusableCell(withIdentifier: "conditionCell")
        if cell == nil {
            cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "conditionCell")
        }
        cell?.textLabel?.text = self.conditions[indexPath.row]
        return cell!
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "listSegue" {
            let dest = segue.destination as! TableViewController
            dest.selectedList
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

} */
