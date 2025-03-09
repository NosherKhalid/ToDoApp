//
//  ToDoAppTests.swift
//  ToDoAppTests
//
//  Created by Nosher Khalid on 3/8/25.
//

import XCTest
@testable import ToDoApp

final class ToDoManagerTests: XCTestCase {

    func test_create_task() {
        // Arrange
        let sut = ToDoManager()
        let task = ToDoTask(id: UUID(), title: "First Task")
        
        // Act
        sut.addTask(task: task)
        
        // Assert
        XCTAssertEqual(sut.tasks.count, 1)
    }
    
    func test_delete_task() {
        // Arrange
        let sut = ToDoManager()
        let task = ToDoTask(id: UUID(), title: "First Task")
        
        // Act
        sut.addTask(task: task)
        sut.deleteTask(id: task.id)
        
        // Assert
        XCTAssertEqual(sut.tasks.count, 0)
    }
    
    func test_update_task() {
        // Arrange
        let sut = ToDoManager()
        var task = ToDoTask(id: UUID(), title: "Task")
        
        // Act
        sut.addTask(task: task)
        task.title = "Updated Task"
        sut.updateTask(id: task.id)
        
        // Assert
        XCTAssertEqual(task.title, "Updated Task")
    }
    
    func test_retreive_task() {
        // Arrange
        let sut = ToDoManager()
        let task = ToDoTask(id: UUID(), title: "First Task")
        
        // Act
        sut.addTask(task: task)
        let retrievedTask = sut.retrieveTask(id: task.id)
        
        // Assert
        XCTAssertEqual(retrievedTask, task)
    }
}
