//
//  TaskListView.swift
//  ToDoList
//
//  Created by Egor on 3.08.24.
//

import SwiftUI

struct TaskListView: View {
    
    // MARK: - Properties
    @EnvironmentObject var vm: ViewModel
    @State private var isEditViewPresented = false
    
    // MARK: - Body
    var body: some View {
        NavigationView {
            ZStack {
                // MARK: Background
                BackgroundView()
                VStack {
                    List {
                        ForEach(vm.tasks) { task in
                            TaskRow(model: task) {
                                vm.isCompletedTask(task: task)
                            }
                            .onTapGesture {
                                isEditViewPresented = true
                            }
                        }
                        
                        // MARK: Delete Item From List
                        .onDelete(perform: vm.deleteTask)
                        
                        // MARK: Edit View
                        .sheet(isPresented: $isEditViewPresented, content: {
                            EditTaskView()
                        })
                    }
                    .listStyle(.plain)
                }
            }
            // MARK: - Navigation Bar
            .navigationTitle("To Do List")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    NavigationLink(destination: AddTaskView()) {
                        Image(systemName: "plus")
                            .foregroundColor(.toDoListPrimary)
                    }
                }
            }
        }
    }
}

// MARK: - Preview
#Preview {
    TaskListView()
        .environmentObject(ViewModel())
        .preferredColorScheme(.dark)
}
