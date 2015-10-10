//
//  ViewController.swift
//  ToDoListApp
//
//  Created by Craig Carlson on 10/7/15.
//  Copyright © 2015 Craig Carlson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var newListNameField: UITextField!
    @IBOutlet weak var newTaskField: UITextField!
    @IBOutlet weak var editTaskField: UITextField!
    @IBOutlet weak var deleteTaskField: UITextField!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        clearAllTextFields()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func buttonPress(sender: UIButton) {
        switch sender.titleLabel!.text! {
            case "Create a New To Do List:":
                userList.createListName(newListNameField.text!)
                newListNameField.text = nil
            case "Add Task:":
                userList.addTaskToList(newTaskField!.text!)
                print(userList.toDoList)
                newTaskField!.text = nil
               
            case "Edit Task:":
                print("edit task function")
            case "Delete Task:":
                userList.deleteTaskFromList(deleteTaskField.text!)
                deleteTaskField.text = nil
                print(userList.toDoList)
            default:
                print("nothing going on here")
        }
    
    }
    
    func clearAllTextFields() {
        newListNameField.text = ""
        newTaskField.text = ""
        editTaskField.text = ""
        deleteTaskField.text = ""
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var destinationViewController: ToDoListController = segue.destinationViewController as! ToDoListController
    }
    
}

