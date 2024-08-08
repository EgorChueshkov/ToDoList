//
//  TaskRow.swift
//  ToDoList
//
//  Created by Egor on 5.08.24.
//

import SwiftUI

struct TaskRow: View {
    
    // MARK: - Property
    var model: TaskModel
    let action: () -> ()
    
    // MARK: - Body
    var body: some View {
        HStack {
            
            // MARK: Title
            model.isCompleted ? Text(model.title).strikethrough().foregroundColor(.toDoListPrimary.opacity(0.5)) : Text(model.title)
            
            Spacer()
            
            // MARK: Task Completion Toggle
            Button {
                action()
            } label: {
                Image(systemName: model.isCompleted ? "checkmark.circle.fill" : "circle")
                    .foregroundColor(Color.toDoListAccent)
            }
            .buttonStyle(.borderless )
        }
        .font(.headline)
        .padding()
        .background(model.isCompleted ? Color.toDoListPrimary.opacity(0.1) : Color.toDoListPrimary.opacity(0.25))
        .cornerRadius(10)
        .listRowInsets(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
        .listRowBackground(Color.clear)
        .listRowSeparator(.hidden)
        .padding(.vertical, 6)
    }
}

// MARK: - Preview
#Preview {
    List {
        TaskRow(model: TaskModel(title: "Task 1", isCompleted: true)) {}
        TaskRow(model: TaskModel(title: "Task 2", isCompleted: false)) {}
    }
    .listStyle(.plain)
    .preferredColorScheme(.dark)
}
