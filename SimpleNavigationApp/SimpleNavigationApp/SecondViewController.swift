//
//  SecondViewController.swift
//  SimpleNavigationApp
//
//  Created by Wallace Wang on 2/7/19.
//  Copyright © 2019 Wallace Wang. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet var labelDisplay: UILabel!
    
    var receivedString = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelDisplay.text = receivedString
        // Do any additional setup after loading the view.
    }
    
}
