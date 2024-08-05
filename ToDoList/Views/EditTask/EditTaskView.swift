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
    
    // MARK: - Body
    var body: some View {
        VStack {
            CustomeTextField(placeholder: "Edit Your Task")
        }
    }
}

// MARK: - Preview
#Preview {
    EditTaskView()
        .environmentObject(ViewModel())
        .preferredColorScheme(.dark)
}
