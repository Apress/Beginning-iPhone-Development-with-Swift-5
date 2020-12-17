//
//  PageViewController.swift
//  PageControllerApp
//
//  Created by Wallace Wang on 2/13/19.
//  Copyright © 2019 Wallace Wang. All rights reserved.
//

import UIKit

class PageViewController: UIPageViewController, UIPageViewControllerDataSource {

    var controllerArray: [UIViewController]? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dataSource = self
        
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let firstVC = storyBoard.instantiateViewController(withIdentifier: "page01")
        let secondVC = storyBoard.instantiateViewController(withIdentifier: "page02")
        let thirdVC = storyBoard.instantiateViewController(withIdentifier: "page03")
        
        controllerArray = [firstVC, secondVC, thirdVC]
        
        self.setViewControllers([controllerArray![0]], direction: UIPageViewController.NavigationDirection.forward, animated: true, completion: nil)
        // Do any additional setup after loading the view.
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let vcIndex = controllerArray!.firstIndex(of: viewController) else {
            return nil
        }
        
        let preIndex = vcIndex - 1
        
        guard preIndex >= 0 else {
            return controllerArray!.last // loops back to end
        }
        
        guard controllerArray!.count > preIndex else {
            return nil
        }
        
        return controllerArray![preIndex]
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let vcIndex = controllerArray!.firstIndex(of: viewController) else {
            return nil
        }
        
        let nextIndex = vcIndex + 1
        
        guard controllerArray!.count != nextIndex else {
            return controllerArray!.first // loops back to beginning
        }
        
        guard controllerArray!.count > nextIndex else {
            return nil
        }
        
        return controllerArray![nextIndex]
    }


}
