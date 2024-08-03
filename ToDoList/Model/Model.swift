//
//  Model.swift
//  ToDoList
//
//  Created by Egor on 3.08.24.
//

import Foundation

struct TaskModel: Identifiable {
    let id = UUID()
    var title: String
    var isCompleted: Bool = false
}
