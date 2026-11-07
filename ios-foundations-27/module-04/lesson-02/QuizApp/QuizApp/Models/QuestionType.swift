//
//  QuestionType.swift
//  QuizApp
//
//  Created by Chris Ching on 2026-10-02.
//

enum QuestionType: String, Decodable {
    case multipleChoice // "multipleChoice"
    case trueFalse // "trueFalse"
    case textEntry // "textEntry"
}
