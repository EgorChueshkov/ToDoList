//
//  CustomButton.swift
//  ToDoList
//
//  Created by Egor on 5.08.24.
//

import SwiftUI

struct CustomButton: View {
    
    // MARK: - Properties
    @EnvironmentObject var vm: ViewModel
    @Environment (\.dismiss) private var dismiss
    let titleButton: String
    let action: () -> ()
    
    // MARK: - Body
    var body: some View {
        Button {
            //vm.addTask(task: vm.newTask)
            action()
            dismiss()
        } label: {
            Text(titleButton)
                .font(.headline)
                .padding()
                .foregroundColor(Color.toDoListBackground1)
                .frame(maxWidth: .infinity)
                .background(Color.toDoListAccent)
                .cornerRadius(10)
        }
    }
}

// MARK: - Preview
#Preview {
    CustomButton(titleButton: "Add Task") {}
        .environmentObject(ViewModel())
        .preferredColorScheme(.dark)
}
