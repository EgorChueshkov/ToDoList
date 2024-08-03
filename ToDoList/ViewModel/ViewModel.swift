//
//  ViewModel.swift
//  ToDoList
//
//  Created by Egor on 3.08.24.
//

import Foundation

class ViewModel: ObservableObject {
   
    // MARK: - Properties
    @Published var tasks: [TaskModel] = []
    @Published var newTask = ""
    
    // MARK: - Methods
    func addTask (task: String) {
        let newTask = TaskModel(title: task)
        tasks.append(newTask)
    }
}
