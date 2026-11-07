//
//  Quiz.swift
//  QuizApp
//
//  Created by Chris Ching on 2026-10-01.
//

struct Quiz: Identifiable, Decodable {
    var id: String
    var title: String
    var imageName: String
    var questions: [Question]
}
