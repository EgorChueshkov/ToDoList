//
//  BackgroundView.swift
//  ToDoList
//
//  Created by Egor on 5.08.24.
//

import SwiftUI

struct BackgroundView: View {
    
    // MARK: - Body
    var body: some View {
        LinearGradient(
            colors: [Color.toDoListBackground1, Color.toDoListBackground2],
            startPoint: .topLeading,
            endPoint: .bottomTrailing)
            .ignoresSafeArea()
    }
}

// MARK: - Preview
#Preview {
    BackgroundView()
}
