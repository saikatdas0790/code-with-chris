import SwiftUI

public struct QuizScreen: View {

    @State private var quizListMachine = QuizListMachine(quizList: [
        .init(
            id: "planets",
            title: "Planets",
            imageName: "planets-quiz",
            questions: [
                .init(
                    questionText: "Which planet is the largest in our solar system",
                    answers: ["Jupiter", "Mars", "Earth", "Saturn"],
                    correctAnswer: "Jupiter"),
                .init(
                    questionText: "Which planet is closest to the Sun?",
                    answers: ["Venus", "Mercury", "Earth", "Pluto"],
                    correctAnswer: "Mercury"),
                .init(
                    questionText: "Which planet is known as the Red Planet",
                    answers: ["Jupiter", "Venus", "Mars", "Neptune"],
                    correctAnswer: "Mars"),
            ]),
        .init(
            id: "animals",
            title: "Animals",
            imageName: "animals-quiz",
            questions: [
                .init(
                    questionText: "Which animal is the largest mammal in the world?",
                    answers: ["Elephant", "Blue Whale", "Giraffe", "Hippopotamus"],
                    correctAnswer: "Blue Whale"),
                .init(
                    questionText:
                        "Which animal is known for changing its color to blend into its surroundings?",
                    answers: ["Chameleon", "Tiger", "Penguin", "Dolphin"],
                    correctAnswer: "Chameleon"),
                .init(
                    questionText: "Which of these animals can fly?",
                    answers: ["Ostrich", "Penguin", "Eagle", "Emu"],
                    correctAnswer: "Eagle"),
            ]),
        .init(
            id: "geography",
            title: "Geography",
            imageName: "geography-quiz",
            questions: [
                .init(
                    questionText: "What is the largest ocean on Earth?",
                    answers: ["Atlantic Ocean", "Indian Ocean", "Pacific Ocean", "Arctic Ocean"],
                    correctAnswer: "Pacific Ocean"),
                .init(
                    questionText: "Which country is home to the city of Paris?",
                    answers: ["Italy", "France", "Spain", "Germany"],
                    correctAnswer: "France"),
                .init(
                    questionText: "Which continent is Egypt located in?",
                    answers: ["Asia", "Europe", "Africa", "South America"],
                    correctAnswer: "Africa"),
            ]),
    ])

    public init() {}

    public var body: some View {
        NavigationStack {
            List($quizListMachine.quizMachines) { $quizMachine in
                NavigationLink {
                    QuizQuestionScreen(quizMachine: $quizMachine)
                } label: {
                    Text(quizMachine.quiz.title)
                }
            }
            .navigationTitle("Quiz Time")
        }
    }
}

#Preview {
    QuizScreen()
}
