//
//  ViewController.swift
//  SimpleNavigationApp
//
//  Created by Wallace Wang on 2/7/19.
//  Copyright © 2019 Wallace Wang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        performSegue(withIdentifier: "firstLink", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nextVC = segue.destination as! SecondViewController
        nextVC.navigationItem.title = "Second View Title"
        nextVC.receivedString = "Passed text"
    }
}

