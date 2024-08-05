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
            
            CustomeTextField(placeholder: "Edit Your Task")
            CustomButton(titleButton: "Save") {
                //
            }
            
            Spacer()
            
        }
        .padding()
        .background(
            BackgroundView()
        )
    }
}

// MARK: - Preview
#Preview {
    EditTaskView()
        .environmentObject(ViewModel())
        .preferredColorScheme(.dark)
}
