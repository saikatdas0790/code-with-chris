//
//  MultipleChoiceQuestionView.swift
//  QuizApp
//
//  Created by Chris Ching on 2026-10-02.
//

import SwiftUI

struct MultipleChoiceQuestionView: View {
    
    let question: Question
    let viewModel: QuizViewModel
    
    var body: some View {
        
        ForEach (question.answers, id: \.self) { answer in
            
            Button(answer) {
                // Check if selected answer is the right answer
                viewModel.checkAnswer(answer: answer)
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
    let question = quiz.questions[0]
    let viewModel = QuizViewModel(q: quiz)
    
    MultipleChoiceQuestionView(question: question, viewModel: viewModel)
}
