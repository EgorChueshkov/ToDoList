//
//  CustomeTextField.swift
//  ToDoList
//
//  Created by Egor on 5.08.24.
//

import SwiftUI

struct CustomeTextField: View {
    
    // MARK: - Properties
    @EnvironmentObject var vm: ViewModel
    let placeholder: String
    
    // MARK: - Body
    var body: some View {
        TextField(placeholder, text: $vm.newTask)
            .font(.headline)
            .padding()
            .background(Color.toDoListPrimary.opacity(0.15))
            .cornerRadius(10)
    }
}

// MARK: - Preview
#Preview {
    CustomeTextField(placeholder: "Enter Your New Task")
        .environmentObject(ViewModel())
        .preferredColorScheme(.dark)
}
