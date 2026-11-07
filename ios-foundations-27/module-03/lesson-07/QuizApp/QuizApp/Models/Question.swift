//
//  Question.swift
//  QuizApp
//  This represents a question in our quiz
//

struct Question {
    let type: QuestionType
    let text: String
    let answers: [String]
    let correctAnswer: String
}
