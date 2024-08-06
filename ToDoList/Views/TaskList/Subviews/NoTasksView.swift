//
//  NoTasksView.swift
//  ToDoList
//
//  Created by Egor on 6.08.24.
//

import SwiftUI

struct NoTasksView: View {
    
    // MARK: - Body
    var body: some View {
        VStack {
            
            Spacer()
            
            // MARK: Text
            Text("THERE ARE NO TASKS \nWHOULD YOU LIKE \nTO ADD?")
                .font(.title)
                .foregroundColor(Color.toDoListPrimary)
                .opacity(0.5)
                .multilineTextAlignment(.center)
            
            Spacer()
            
            // MARK: Add Button
            NavigationLink(destination: AddTaskView()) {
                ZStack {
                    
                    Circle()
                        .frame(width: 100)
                        .foregroundColor(Color.toDoListPrimary)
                        .opacity(0.5)
                    
                    Image(systemName: "plus")
                        .foregroundColor(.toDoListBackground2)
                        .font(.largeTitle)
                }
            }
            .padding(.bottom)
        }
    }
}

// MARK: - Preview
#Preview {
    NoTasksView()
        .preferredColorScheme(.dark)
}
