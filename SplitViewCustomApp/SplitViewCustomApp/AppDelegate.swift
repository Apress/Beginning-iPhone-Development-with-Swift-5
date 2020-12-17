//
//  AppDelegate.swift
//  SplitViewCustomApp
//
//  Created by Wallace Wang on 2/14/19.
//  Copyright © 2019 Wallace Wang. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, UISplitViewControllerDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let splitVC = window?.rootViewController as! UISplitViewController
        splitVC.delegate = self
        let navigationVC = splitVC.viewControllers.last as? UINavigationController
        navigationVC?.topViewController!.navigationItem.leftBarButtonItem = splitVC.displayModeButtonItem
        return true
    }

    func splitViewController(_ splitViewController: UISplitViewController, collapseSecondary secondaryViewController:UIViewController, onto primaryViewController:UIViewController) -> Bool {

        guard let secondaryVC = secondaryViewController as? UINavigationController else {
            return false
        }
        guard let topAsDetailController = secondaryVC.topViewController as? DetailViewController else { return false }
        if topAsDetailController.detailItem == nil {
            // Return true to indicate that we have handled the collapse by doing nothing; the secondary controller will be discarded.
            return true
        }
        return false
    }

}

