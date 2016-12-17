//
//  ViewController.swift
//  ProgrammaticTemplates
//
//  Created by Chelsea Green on 12/16/16.
//  Copyright © 2016 Chelsea Green. All rights reserved.
//

import UIKit

let screenWidth = UIScreen.main.bounds.width
let screenHeight = UIScreen.main.bounds.height

class ViewController: UIViewController {
    
    var label = Label(frame: CGRect(x: 10, y: screenHeight/10, width: screenWidth-20, height: 50))
    var button = Button(frame: CGRect(x: 10, y: screenHeight/2, width: screenWidth-20, height: 50))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.white
        
        navigationItem.title = "Nav Root"
        
        label.text = "I'm a label!"
        view.addSubview(label)
        
        button.addTarget(self, action: #selector(self.buttonPressed), for: UIControlEvents.touchUpInside)
        button.setTitle("I'm a button! Click me to navigatve somewhere", for: UIControlState())
        self.view.addSubview(button)
    }
    
    func buttonPressed() {
        self.navigationController?.pushViewController(TabController(), animated: true)
    }
}

