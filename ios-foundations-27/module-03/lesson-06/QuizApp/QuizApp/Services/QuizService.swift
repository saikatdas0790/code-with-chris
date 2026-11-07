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
                            questionText: "Which planet is the largest in our solar system",
                            answers: ["Jupiter", "Mars", "Earth", "Saturn"],
                            correctAnswer: "Jupiter"),
                        Question(
                            questionText: "Which planet is closest to the Sun?",
                            answers: ["Venus", "Mercury", "Earth", "Pluto"],
                            correctAnswer: "Mercury"),
                        Question(
                            questionText: "Which planet is known as the Red Planet",
                            answers: ["Jupiter", "Venus", "Mars", "Neptune"],
                            correctAnswer: "Mars")
                      ])
        quizzes.append(q1)
        
        let q2 = Quiz(id: UUID().uuidString,
                      title: "Animals",
                      imageName: "animals-quiz",
                      questions: [
                        Question(
                            questionText: "Which animal is the largest mammal in the world?",
                            answers: ["Elephant", "Blue Whale", "Giraffe", "Hippopotamus"],
                            correctAnswer: "Blue Whale"),
                        Question(
                            questionText: "Which animal is known for changing its color to blend into its surroundings?",
                            answers: ["Chameleon", "Tiger", "Penguin", "Dolphin"],
                            correctAnswer: "Chameleon"),
                        Question(
                            questionText: "Which of these animals can fly?",
                            answers: ["Ostrich", "Penguin", "Eagle", "Emu"],
                            correctAnswer: "Eagle")
                      ])
        quizzes.append(q2)

        let q3 = Quiz(id: UUID().uuidString,
                      title: "Geography",
                      imageName: "geography-quiz",
                      questions: [
                        Question(
                            questionText: "What is the largest ocean on Earth?",
                            answers: ["Atlantic Ocean", "Indian Ocean", "Pacific Ocean", "Arctic Ocean"],
                            correctAnswer: "Pacific Ocean"),
                        Question(
                            questionText: "Which country is home to the city of Paris?",
                            answers: ["Italy", "France", "Spain", "Germany"],
                            correctAnswer: "France"),
                        Question(
                            questionText: "Which continent is Egypt located in?",
                            answers: ["Asia", "Europe", "Africa", "South America"],
                            correctAnswer: "Africa")
                      ])
        quizzes.append(q3)
        
        // Return the quizzes
        return quizzes
    }
    
    
}
