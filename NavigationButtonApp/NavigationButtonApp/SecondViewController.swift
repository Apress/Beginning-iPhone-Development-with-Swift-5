//
//  SecondViewController.swift
//  NavigationButtonApp
//
//  Created by Wallace Wang on 2/8/19.
//  Copyright © 2019 Wallace Wang. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func doneTapped(_ sender: UIBarButtonItem) {
        let alert = UIAlertController(title: "Message", message: "Done button tapped", preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "OK", style: .default, handler: { action -> Void in
            //Just dismiss the action sheet
        })
        alert.addAction(okAction)
        
        self.present(alert, animated: true, completion: nil)
    }
    
}
