//
//  TitleScreenViewController.swift
//  ColorBlindTest
//
//  Created by campstud on 7/16/18.
//  Copyright © 2018 campstud. All rights reserved.
//

import UIKit

class TitleScreenViewController: UIViewController {
    
    var reset: Bool?
    
    var initalizeComponents = true
    
    var imageStart = true
    

    @IBAction func playButton(_ sender: Any) {
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        if initalizeComponents == true {
            
        }

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if reset == true {
            
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

}
