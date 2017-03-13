//
//  SettingsViewController.swift
//  tipz
//
//  Created by Daniel Torrefranca on 3/12/17.
//  Copyright © 2017 Daniel Torrefranca. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var defaultPercent: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func setDefault(_ sender: AnyObject) {
        
        let index = defaultPercent.selectedSegmentIndex
        let defaults = UserDefaults.standard
        
        
        defaults.set(index, forKey: "DefaultIndex")
        defaults.synchronize()
        
    }

    
}
