//
//  Quiz.swift
//  QuizApp
//
//  Created by Chris Ching on 2026-10-01.
//

struct Quiz: Identifiable {
    var id: String
    var title: String
    var imageName: String
    var questions: [Question]
}
