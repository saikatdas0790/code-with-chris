//
//  QuizListViewModel.swift
//  QuizApp
//
//  Created by Chris Ching on 2026-10-01.
//
import SwiftUI

@Observable
class QuizListViewModel {
    
    // Properties
    var quizzes: [Quiz]
    
    // Methods
    init() {
        let service = QuizService()
        quizzes = service.getQuizzes()
    }
}
