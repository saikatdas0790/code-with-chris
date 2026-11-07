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
                QuizRowView(quiz: q)
            }
        }
    }
}

#Preview {
    QuizListView()
}
