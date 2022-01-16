//
//  ViewController.swift
//  Todo-List
//
//  Created by Emre Kök on 4.12.2021.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var navigationBar: UINavigationBar!
    @IBOutlet weak var todoTable: UITableView!
    
    var taskA = Task(text:"do something", date:Date(timeIntervalSinceReferenceDate:41022000),status:false)
    var taskB = Task(text:"do nothing", date:Date(timeIntervalSinceReferenceDate:41022020),status:false)
    var user = User(tasks: Task.generateEmptyTaskList(), fname: "Emre", lName:"Kok")
    
    let ColorPicker:ColorPalette = ColorPalette()
        
    override func viewDidLoad() {
        user.assignTaskToUser(task: taskA)
        user.assignTaskToUser(task: taskB)
        
        super.viewDidLoad()
        todoTable.delegate = self
        todoTable.dataSource = self

        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.user.taskList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = TaskTableCell()
        
        cell.taskLabel.text = self.user.taskList[indexPath.row].text
        
        if self.user.taskList[indexPath.row].status! {
            cell.backgroundColor =  ColorPicker.successColorUI
        }
        else{
            cell.backgroundColor =  ColorPicker.waitingColorUI
        }
        
        return cell
        }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        if !user.taskList[indexPath.row].status!
        {
            user.taskList[indexPath.row].status = true
        }
        else
        {
            user.taskList[indexPath.row].status = false
        }
        tableView.reloadData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "id3" {
            // as -- casting 
            let destinationVC = segue.destination as! NewTaskVController
            destinationVC.textScreen = "Type your task."
        }
    }
    @IBAction func openTask(_ sender: Any) {
        performSegue(withIdentifier: "id3", sender: nil)
    }
}

