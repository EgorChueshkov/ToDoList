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
    
    // MARK: - Body
    var body: some View {
        NavigationView {
            ZStack {
                // MARK: Background
                LinearGradient(
                    colors: [Color.toDoListBackground1, Color.toDoListBackground2],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing)
                    .ignoresSafeArea()
                VStack {
                    List {
                        ForEach(vm.tasks) { task in
                            Text(task.title)
                        }
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
