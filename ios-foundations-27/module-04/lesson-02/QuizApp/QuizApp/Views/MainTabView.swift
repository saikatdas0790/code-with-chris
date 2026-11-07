//
//  MainTabVIew.swift
//  QuizApp
//
//  Created by Chris Ching on 2026-10-02.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        
        TabView {
            NavigationStack {
                QuizListView()
            }
                .tabItem {
                    Label("Quiz", systemImage: "questionmark.circle.fill")
                }
            
            SettingsView()
                .tabItem{
                    Label("Settings", systemImage: "gear")
                }
        }
        
    }
}

#Preview {
    MainTabView()
}
