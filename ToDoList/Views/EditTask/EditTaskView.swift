//
//  EditTaskView.swift
//  ToDoList
//
//  Created by Egor on 5.08.24.
//

import SwiftUI

struct EditTaskView: View {
    
    // MARK: - Properties
    @EnvironmentObject var vm: ViewModel
    @Environment (\.dismiss) private var dismiss
    var task: TaskModel
    
    // MARK: - Body
    var body: some View {
        VStack {
            
            HStack(alignment: .center) {
                
                /// Title
                Text("Edit Task")
                    .font(.headline)
                    .frame(maxWidth: .infinity)
                
                /// Cancel Button
                    .overlay(alignment: .topLeading) {
                        Button {
                            dismiss()
                        } label: {
                            Text("Cancel")
                                .frame(width: 56)
                                .foregroundColor(Color.toDoListAccent)
                        }
                    }
                    .padding(.vertical)
            }
            
            // MARK: Text Field
            CustomeTextField(placeholder: "Edit Your Task")
            
            // MARK: Edit Task Button
            CustomButton(titleButton: "Save") {
                vm.updateTask(id: task.id, title: vm.newTask)
            }
            
            Spacer()
            
        }
        .padding()
        .background(
            BackgroundView()
        )
        .onAppear() {
            vm.newTask = task.title
        }
    }
}

// MARK: - Preview
#Preview {
    EditTaskView(task: TaskModel(title: "Task1"))
        .environmentObject(ViewModel())
        .preferredColorScheme(.dark)
}
