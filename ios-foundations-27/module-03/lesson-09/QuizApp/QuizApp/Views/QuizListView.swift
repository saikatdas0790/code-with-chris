//
//  QuizListView.swift
//  QuizApp
//
//  Created by Chris Ching on 2026-10-01.
//

import SwiftUI

struct QuizListView: View {
    
    @State var viewModel = QuizListViewModel()
    
    var body: some View {
        
        List {
            ForEach(viewModel.quizzes) { q in
                
                NavigationLink {
                    QuizView(quiz: q)
                } label: {
                    QuizRowView(quiz: q)
                }

            }
        }
        .navigationTitle("Quizzes")
    }
}

#Preview {
    NavigationStack {
        QuizListView()
    }
}
