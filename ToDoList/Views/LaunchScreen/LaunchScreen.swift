//
//  LaunchScreen.swift
//  ToDoList
//
//  Created by Egor on 8.08.24.
//

import SwiftUI

struct LaunchScreen: View {
    
    // MARK: - Property
    @Binding var isPresented: Bool
    @State var progress: CGFloat = 0.0
    @State private var scale = CGSize(width: 0.8, height: 0.8)
    
    // MARK: - Body
    var body: some View {
        ZStack {
            
            // MARK: Background
            BackgroundView()
            
            ZStack {
                
                // MARK: Logo
                RoundedRectangle(cornerRadius: 25)
                    .foregroundColor(Color.toDoListPrimary).opacity(0.25)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                Image(systemName: "checkmark")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(Color.toDoListPrimary)
                
                // MARK: Progress View
                VStack {
                    Spacer()
                    CustomProgressView(initialProgress: $progress, color: Color.toDoListPrimary)
                        .frame(height: 8)
                        .onReceive([self.progress].publisher) { _ in
                            if self.progress >= 1.0 {
                                self.isPresented = false
                            }
                        }
                        .padding(.bottom, 30)
                        .padding(.horizontal, 40)
                }
            }
        }
        .onAppear() {
            self.startTimer()
        }
    }
    
    // MARK: Methods
    func startTimer() {
        Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { time in
            self.progress += 0.05
        }
    }
}

// MARK: - Preview
#Preview {
    LaunchScreen(isPresented: .constant(true))
}
