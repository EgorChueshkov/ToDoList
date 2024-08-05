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
            LinearGradient(
                colors: [Color.toDoListBackground1, Color.toDoListBackground2],
                startPoint: .topLeading,
                endPoint: .bottomTrailing)
                .ignoresSafeArea()
            
            VStack {
                // MARK: Text Field
                TextField("Enter Your New Task", text: $vm.newTask)
                    .font(.headline)
                    .padding()
                    .background(Color.toDoListPrimary.opacity(0.15))
                    .cornerRadius(10)
                // MARK: Add Task Button
                Button {
                    vm.addTask(task: vm.newTask)
                    dismiss()
                } label: {
                    Text("Add Task")
                        .font(.headline)
                        .padding()
                        .foregroundColor(Color.toDoListBackground1)
                        .frame(maxWidth: .infinity)
                        .background(Color.toDoListAccent)
                        .cornerRadius(10)
                }
                
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
