//
//  TabController.swift
//  ProgrammaticTemplates
//
//  Created by Chelsea Green on 12/16/16.
//  Copyright © 2016 Chelsea Green. All rights reserved.
//

import UIKit

class TabController: UITabBarController, UITabBarControllerDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Tab Controller"
        
        delegate = self
        tabBar.tintColor = UIColor.black
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let one = TabViewControllerOne()
        let two = TabViewControllerTwo()
        
        let oneTitle = UITabBarItem(title: "Table View", image: nil, tag: 0)
        one.tabBarItem = oneTitle
        
        let twoTitle = UITabBarItem(title: "Other", image: nil, tag: 1)
        two.tabBarItem = twoTitle
        
        let controllers = [one, two]
        self.viewControllers = controllers
    }
    
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        print("Should select viewController: \(viewController.title) ?")
        return true;
    }
}
