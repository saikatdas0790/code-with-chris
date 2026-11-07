//
//  QuizService.swift
//  QuizApp
//
//  Created by Chris Ching on 2026-09-28.
//

struct QuizService {
    
    func getQuestions() -> [Question] {
        
        // Create questions
        var questions: [Question] = []
        
        let question1 = Question(
            questionText: "Which planet is the largest in our solar system",
            answers: ["Jupiter", "Mars", "Earth", "Saturn"],
            correctAnswer: "Jupiter")
        questions.append(question1)
        
        let question2 = Question(
            questionText: "Which planet is closest to the Sun?",
            answers: ["Venus", "Mercury", "Earth", "Pluto"],
            correctAnswer: "Mercury")
        questions.append(question2)
        
        let question3 = Question(
            questionText: "Which planet is known as the Red Planet",
            answers: ["Jupiter", "Venus", "Mars", "Neptune"],
            correctAnswer: "Mars")
        questions.append(question3)
        
        // Return questions
        return questions
    }
    
    
}
