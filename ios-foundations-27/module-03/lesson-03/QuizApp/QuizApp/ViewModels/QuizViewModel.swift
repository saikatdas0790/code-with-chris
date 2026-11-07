//
//  QuizViewModel.swift
//  QuizApp
//
//  This view model powers the quiz view and keeps track of the quiz questions as well as the state of the quiz
//
import SwiftUI

@Observable
class QuizViewModel {
    
    // Properties
    var questions: [Question]
    var currentQuestionIndex: Int = 0
    var resultMessage: String = ""
    var hasAnswered: Bool = false
    var hasQuizCompleted: Bool = false

    // Methods
    init() {
        let service = QuizService()
        questions = service.getQuestions()
    }
    
    func checkAnswer(answer: String) {
        
        // Check answer that is passed in
        let question = questions[currentQuestionIndex]
        
        if answer == question.correctAnswer {
            resultMessage = "You're correct!"
        }
        else {
            resultMessage = "That's not correct. Please try again."
        }
        
        // Flip the flag to answered
        hasAnswered = true
    }
    
    func advanceQuestion() {
        // Increment the currentQuestionIndex, but check bounds first
        if currentQuestionIndex + 1 < questions.count {
            // Advance
            currentQuestionIndex += 1
            resultMessage = ""
            hasAnswered = false
        }
        else {
            hasQuizCompleted = true
        }
    }
}
