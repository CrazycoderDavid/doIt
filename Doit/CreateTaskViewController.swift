//
//  CreateTaskViewController.swift
//  Doit
//
//  Created by David Groomes on 9/14/16.
//  Copyright © 2016 Arc Towers. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {

    @IBOutlet weak var importantSwitch: UISwitch!
    @IBOutlet weak var taskNameTextField: UITextField!
    
    var previousVC = TaskViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    @IBAction func addTapped(_ sender: AnyObject) {
    //Create tast to add to Array
    
    
    let task = Task()
        task.name = taskNameTextField.text!
        task.important = importantSwitch.isOn
    
        previousVC.tasks.append(task)
        previousVC.tableView.reloadData()
        //navigationController!.popViewController(animated: true)
            }


}
