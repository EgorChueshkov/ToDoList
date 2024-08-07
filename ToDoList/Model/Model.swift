//
//  Model.swift
//  ToDoList
//
//  Created by Egor on 3.08.24.
//

import Foundation

struct TaskModel: Identifiable, Codable {
    let id = UUID()
    var title: String
    var isCompleted: Bool = false
}
