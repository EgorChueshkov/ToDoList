//
//  ContainerView.swift
//  ToDoList
//
//  Created by Egor on 8.08.24.
//

import SwiftUI

struct ContainerView: View {
    
    // MARK: - Properties
    @State private var isLaunchScreenViewPresented = true
    
    // MARK: - Body
    var body: some View {
        if !isLaunchScreenViewPresented {
            ContentView()
        } else {
            LaunchScreen(isPresented: $isLaunchScreenViewPresented)
        }
    }
}

// MARK: - Preview
#Preview {
    ContainerView()
        .environmentObject(ViewModel())
        .preferredColorScheme(.dark)
}
