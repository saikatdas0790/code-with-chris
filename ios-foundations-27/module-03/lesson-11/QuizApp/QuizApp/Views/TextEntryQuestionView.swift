//
//  TextEntryQuestionView.swift
//  QuizApp
//
//  Created by Chris Ching on 2026-10-02.
//

import SwiftUI

struct TextEntryQuestionView: View {
    
    let viewModel: QuizViewModel
    @State var textAnswer: String = ""
    
    var body: some View {
        VStack (spacing: 20) {
            TextField("Type in your answer", text: $textAnswer)
                .padding(.vertical)
                .foregroundStyle(Color.primary)
                .border(Color.primary, width: 2)
            
            Button("Submit") {
                // Clean the text first
                let sanitizedAnswer = textAnswer.trimmingCharacters(in: .whitespacesAndNewlines)
                
                // Submit the answer to the view model
                viewModel.checkAnswer(answer: sanitizedAnswer)
            }
            .frame(maxWidth: .infinity)
            .padding(.vertical)
            .foregroundStyle(Color.primary)
            .border(Color.primary, width: 2)
                
        }
    }
}

#Preview {
    
    let service = QuizService()
    let quizzes = service.getQuizzes()
    let quiz = quizzes[0]    
    let viewModel = QuizViewModel(q: quiz)
    
    TextEntryQuestionView(viewModel: viewModel)
}
