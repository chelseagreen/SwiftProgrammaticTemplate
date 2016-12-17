//
//  TabViewControllerOne.swift
//  ProgrammaticTemplates
//
//  Created by Chelsea Green on 12/16/16.
//  Copyright © 2016 Chelsea Green. All rights reserved.
//

import UIKit

class TabViewControllerOne: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var tableView : UITableView = UITableView()
    let randomList: NSArray = ["meow", "meow moew", "cheeses", "corn", "meow", "derp", "diddle"]
    
    override func viewDidLoad() {
        
        self.tableView.rowHeight = 50
        self.view.addSubview(self.tableView)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.tableView.delegate = self
        self.tableView.dataSource = self
    }
    
    override func viewDidLayoutSubviews() {
        tableView.frame = CGRect(x: 0, y: 0, width: screenWidth, height: screenHeight)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection saved: Int) -> Int {
        return randomList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let random = randomList[indexPath.row] as! String
        let cell = UITableViewCell(frame: CGRect(x: 0,y: 0, width: self.view.frame.width, height: 100))
        cell.textLabel?.text = random
        return cell
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        switch editingStyle {
        case .delete: break
        default:
            return
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    }
}
