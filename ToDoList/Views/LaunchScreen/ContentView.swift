//
//  ContentView.swift
//  ToDoList
//
//  Created by Egor on 3.08.24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TaskListView()
    }
}

#Preview {
    ContentView()
        .environmentObject(ViewModel())
        .preferredColorScheme(.dark)
}
