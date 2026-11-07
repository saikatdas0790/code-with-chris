//
//  QuizService.swift
//  QuizApp
//
//  Created by Chris Ching on 2026-09-28.
//
import Foundation

struct QuizService {
    
    func getQuizzes() -> [Quiz] {
        
        var quizzes: [Quiz] = []
        
        // Create the quizzes
        let q1 = Quiz(id: UUID().uuidString,
                      title: "Planets",
                      imageName: "planets-quiz",
                      questions: [
                        Question(
                            type: .multipleChoice,
                            text: "Which planet is the largest in our solar system",
                            answers: ["Jupiter", "Mars", "Earth", "Saturn"],
                            correctAnswer: "Jupiter"),
                        Question(
                            type: .multipleChoice,
                            text: "Which planet is closest to the Sun?",
                            answers: ["Venus", "Mercury", "Earth", "Pluto"],
                            correctAnswer: "Mercury"),
                        Question(
                            type: .multipleChoice,
                            text: "Which planet is known as the Red Planet",
                            answers: ["Jupiter", "Venus", "Mars", "Neptune"],
                            correctAnswer: "Mars"),
                        Question(
                            type: .trueFalse,
                            text: "The Sun is a star.",
                            answers: ["True", "False"],
                            correctAnswer: "True"
                        ),
                        Question(
                            type: .textEntry,
                            text: "What is the largest planet in our solar system?",
                            answers: [],
                            correctAnswer: "Jupiter",
                        )
                      ])
        quizzes.append(q1)
        
        let q2 = Quiz(id: UUID().uuidString,
                      title: "Animals",
                      imageName: "animals-quiz",
                      questions: [
                        Question(
                            type: .multipleChoice,
                            text: "Which animal is the largest mammal in the world?",
                            answers: ["Elephant", "Blue Whale", "Giraffe", "Hippopotamus"],
                            correctAnswer: "Blue Whale"),
                        Question(
                            type: .multipleChoice,
                            text: "Which animal is known for changing its color to blend into its surroundings?",
                            answers: ["Chameleon", "Tiger", "Penguin", "Dolphin"],
                            correctAnswer: "Chameleon"),
                        Question(
                            type: .multipleChoice,
                            text: "Which of these animals can fly?",
                            answers: ["Ostrich", "Penguin", "Eagle", "Emu"],
                            correctAnswer: "Eagle"),
                        Question(
                            type: .trueFalse,
                            text: "Penguins can fly.",
                            answers: ["True", "False"],
                            correctAnswer: "False",
                        ),
                        Question(
                            type: .textEntry,
                            text: "What is the tallest animal?",
                            answers: [],
                            correctAnswer: "Giraffe",
                        )
                      ])
        quizzes.append(q2)

        let q3 = Quiz(id: UUID().uuidString,
                      title: "Geography",
                      imageName: "geography-quiz",
                      questions: [
                        Question(
                            type: .multipleChoice,
                            text: "What is the largest ocean on Earth?",
                            answers: ["Atlantic Ocean", "Indian Ocean", "Pacific Ocean", "Arctic Ocean"],
                            correctAnswer: "Pacific Ocean"),
                        Question(
                            type: .multipleChoice,
                            text: "Which country is home to the city of Paris?",
                            answers: ["Italy", "France", "Spain", "Germany"],
                            correctAnswer: "France"),
                        Question(
                            type: .multipleChoice,
                            text: "Which continent is Egypt located in?",
                            answers: ["Asia", "Europe", "Africa", "South America"],
                            correctAnswer: "Africa"),
                        Question(
                            type: .trueFalse,
                            text: "The Nile River flows through Egypt.",
                            answers: ["True", "False"],
                            correctAnswer: "True",
                        ),
                        Question(
                            type: .textEntry,
                            text: "What is the capital city of Japan?",
                            answers: [],
                            correctAnswer: "Tokyo",
                        )
                      ])
        quizzes.append(q3)
        
        // Return the quizzes
        return quizzes
    }
    
    
}
