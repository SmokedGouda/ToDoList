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
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func buttonPress(sender: UIButton) {
        switch sender.titleLabel!.text! {
            case "Create a New To Do List:":
               
            createNewListName(newListNameField.text!)
            case "Add Task:":
                print("add task function")
            case "Edit Task:":
                print("edit task function")
            case "Delete Task:":
                print("delete task function")
            default:
                print("nothing going on here")
        }
    }
 
    func createNewListName(userListName: String) ->String {
        return userListName
    }
}

