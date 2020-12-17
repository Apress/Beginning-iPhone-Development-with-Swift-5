//
//  SecondViewController.swift
//  MultipleNavigationApp
//
//  Created by Wallace Wang on 2/7/19.
//  Copyright © 2019 Wallace Wang. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        performSegue(withIdentifier: "secondLink", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nextVC = segue.destination as! ThirdViewController
        nextVC.navigationItem.title = "Third View Controller"
    }

}
