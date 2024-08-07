//
//  AddTaskView.swift
//  ToDoList
//
//  Created by Egor on 3.08.24.
//

import SwiftUI

struct AddTaskView: View {
    
    // MARK: - Properties
    @EnvironmentObject var vm: ViewModel
    @Environment (\.dismiss) private var dismiss
    
    // MARK: - Body
    var body: some View {
        ZStack {
            // MARK: Background
            BackgroundView()
            
            VStack {
                // MARK: Text Field
                CustomeTextField(placeholder: "Enter Your New Task")
                
                // MARK: Add Task Button
                CustomButton(titleButton: "Add Task") {
                    vm.addTask(task: vm.newTask)
                }
                .disabled(vm.newTask.isEmpty)
                
                Spacer()
            }
            .padding()
        }
        // MARK: Navigation Bar
        .navigationTitle("Add Task")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(true)
        .toolbar {
            // MARK: Back Button
            ToolbarItem(placement: .topBarLeading) {
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "chevron.left")
                        .font(.headline)
                        .foregroundColor(Color.toDoListAccent)
                }
            }
        }
        .onAppear {
            vm.newTask = ""
        }
    }
}

// MARK: - Preview
#Preview {
    NavigationView {
        AddTaskView()
            .environmentObject(ViewModel())
            .preferredColorScheme(.dark)
    }
}
