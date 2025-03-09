//
//  ToDoManager.swift
//  ToDoApp
//
//  Created by Nosher Khalid on 3/8/25.
//

import Foundation

class ToDoManager {
    
    var tasks: [ToDoTask] = []
    
    func addTask(task: ToDoTask) {
        tasks.append(task)
    }
    
    func deleteTask(id: UUID) {
        let index = indexForId(id)
        tasks.remove(at: index!)
    }
    
    func updateTask(id: UUID) {
        let index = indexForId(id)
        tasks[index!].title = "Updated Task"
    }
    
    func retrieveTask(id: UUID) -> ToDoTask? {
        let index = indexForId(id)
        return tasks[index!]
    }
    
    //MARK: - Helpers
    func indexForId(_ id: UUID) -> Int? {
        return tasks.firstIndex { $0.id == id }
    }
}

struct ToDoTask: Equatable {
    var id: UUID
    var title: String
}
