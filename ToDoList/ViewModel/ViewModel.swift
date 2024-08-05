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
    
    func isCompletedTask (task: TaskModel) {
        if let index = tasks.firstIndex(where: { $0.id == task.id }) {
            tasks[index].isCompleted.toggle()
        }
    }
    
    func deleteTask (task: IndexSet) {
        tasks.remove(atOffsets: task)
    }
}
