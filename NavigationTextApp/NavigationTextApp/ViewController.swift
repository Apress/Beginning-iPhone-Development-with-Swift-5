//
//  ViewController.swift
//  NavigationTextApp
//
//  Created by Wallace Wang on 2/8/19.
//  Copyright © 2019 Wallace Wang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.prompt = "Prompt text"
        navigationItem.title = "Title text"
        
        navigationController?.navigationBar.tintColor = UIColor.red
        
        navigationController?.navigationBar.barTintColor = UIColor.green
        // Do any additional setup after loading the view.
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        performSegue(withIdentifier: "firstLink", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nextVC = segue.destination as! SecondViewController
        nextVC.navigationItem.prompt = "New prompt here"
        nextVC.navigationItem.title = "New title here"
        
        let customButton = UIBarButtonItem()
        customButton.title = "New back text"
        navigationItem.backBarButtonItem = customButton
    }

}

