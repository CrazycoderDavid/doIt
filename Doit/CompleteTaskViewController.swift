//
//  CompleteTaskViewController.swift
//  Doit
//
//  Created by David Groomes on 9/15/16.
//  Copyright © 2016 Arc Towers. All rights reserved.
//

import UIKit

class CompleteTaskViewController: UIViewController {
    
    
    @IBOutlet weak var taskLbl: UILabel!
    var previousVC = TaskViewController()
    var task = Task()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        if task.important {
            taskLbl.text! = "❗️\(task.name)"
        } else {
            taskLbl.text! = task.name
        }
        
        }
    
//    @IBAction func completed(_ sender: AnyObject) {
//        previousVC.tasks.remove(at: previousVC.selectedIndex)
//        previousVC.tableView.reloadData()
//        navigationController!.popViewController(animated: true)
//        
//    }
    
}
