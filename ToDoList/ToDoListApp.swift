//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Egor on 3.08.24.
//

import SwiftUI

@main
struct ToDoListApp: App {
    
    // MARK: - Properties
    @AppStorage("isDarkMode") private var isDarkMode = true
    @StateObject var vm = ViewModel()

    // MARK: - Body
    var body: some Scene {
        WindowGroup {
            ContainerView()
                .environmentObject(vm)
                .preferredColorScheme(isDarkMode ? .dark : .light)
        }
    }
}
