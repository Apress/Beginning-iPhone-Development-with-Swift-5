//
//  DetailViewController.swift
//  SplitViewCustomApp
//
//  Created by Wallace Wang on 2/14/19.
//  Copyright © 2019 Wallace Wang. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet var petLabel: UILabel!
    
    var detailItem: String? {
        didSet {
            configureView()
        }
    }
    
    func configureView() {
        if let label = petLabel {
            label.text = detailItem
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
        // Do any additional setup after loading the view.
    }
    
}
