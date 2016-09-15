//
//  TaskController.swift
//  Doit
//
//  Created by David Groomes on 9/13/16.
//  Copyright © 2016 Arc Towers. All rights reserved.
//

import UIKit

class TaskViewController: UIViewController, UITableViewDelegate, UITableViewDataSource  {
    
    @IBOutlet weak var tableView: UITableView!
    
    var tasks: [Task] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tasks = makeTask()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let task = tasks[indexPath.row]
       performSegue(withIdentifier: "trailToSelected", sender: task)
        
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let task = tasks[indexPath.row]
        if task.important {
            cell.textLabel?.text = "❗️ \(task.name)"
        } else {
            cell.textLabel?.text = task.name
        }
        
        return cell
    }
    
    func makeTask() -> [Task] {
        let task1 = Task()
        task1.name = "Walk the dog"
        task1.important = false
        
        let task2 = Task()
        task2.name = "Buy cheese"
        task2.important = false
        
        let task3 = Task()
        task3.name = "Do Laundry"
        task3.important = false
        
        return [task1, task2, task3]
    }
    @IBAction func plusTapped(_ sender: AnyObject) {
        performSegue(withIdentifier: "trailToAdd", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "trilToAdd" {
            let nextVC = segue.destination as! CreateTaskViewController
            nextVC.previousVC = self
        }
        
        if segue.identifier == "TrailToSelected" {
            let othervc = segue.destination as! CompleteTaskViewController
            othervc.task = sender as! Task
        }
    }
    
    
}

