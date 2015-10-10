//
//  UserList.swift
//  ToDoListApp
//
//  Created by Craig Carlson on 10/7/15.
//  Copyright © 2015 Craig Carlson. All rights reserved.
//

import Foundation

var userList = UserList()

class UserList {
    var name = ""
    var toDoList = [String]()
    
//    init(name: String, toDoList: [String]) {
//        self.name = name
//        self.toDoList = toDoList
//    }
    
    func createListName(userListName: String) -> String {
        name = userListName
        return name
        
    }
    
    func addTaskToList(userTask: String) -> [String] {
        toDoList.append(userTask)
        return toDoList
    }
    
    func editTaskInList() {
        
    }
    
    func deleteTaskFromList(userTask: String) {
        for (index, value) in toDoList.enumerate() {
            if userTask == value {
                toDoList.removeAtIndex(index)
            }
        }
    }
}