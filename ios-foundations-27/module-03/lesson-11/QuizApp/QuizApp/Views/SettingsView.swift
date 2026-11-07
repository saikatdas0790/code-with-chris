//
//  SettingsView.swift
//  QuizApp
//
//  Created by Chris Ching on 2026-10-02.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 24) {
            Text("Settings")
                .font(.largeTitle)
                .bold()

            Label("Quiz App", systemImage: "questionmark.circle.fill")
            Label("Module 3", systemImage: "book.fill")
            Label("Version 1.0", systemImage: "info.circle.fill")

            Spacer()
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
    }
}

#Preview {
    SettingsView()
}
