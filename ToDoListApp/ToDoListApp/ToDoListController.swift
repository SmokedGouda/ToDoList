//
//  ToDoListController.swift
//  ToDoListApp
//
//  Created by Craig Carlson on 10/7/15.
//  Copyright © 2015 Craig Carlson. All rights reserved.
//

import UIKit

class ToDoListController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var listNameLabel: UILabel!
    
//    let userToDoList = UserList()
    let userToDoListTableIdentifier = "UserToDoListTableIdentifier"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        listNameLabel.text = userList.name
            }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
            }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return userList.toDoList.count
    }
        func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath:
            NSIndexPath) -> UITableViewCell {
                var cell = tableView.dequeueReusableCellWithIdentifier(userToDoListTableIdentifier) as UITableViewCell!
                if(cell == nil) {
                    cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: userToDoListTableIdentifier)
                }
                cell.textLabel?.text = userList.toDoList[indexPath.row]
                return cell
        }
}