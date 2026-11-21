import SwiftUI

struct QuizQuestionScreen: View {
    @Binding var quizMachine: QuizListMachine.QuizMachine

    var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                Image(quizMachine.quiz.imageName, bundle: .module)
                    .resizable()
                    .scaledToFit()
                    .accessibilityHidden(true)

                switch quizMachine.state {
                case .answering(let questionIndex):
                    let question = quizMachine.quiz.questions[questionIndex]
                    Text("Question \(questionIndex + 1) of \(quizMachine.quiz.questions.count)")
                        .foregroundStyle(.secondary)
                    Text(question.questionText)
                        .font(.title)
                        .multilineTextAlignment(.center)
                        .bold()
                        .accessibilityAddTraits(.isHeader)

                    LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())]) {
                        ForEach(question.answers.indices, id: \.self) { answerIndex in
                            let answer = question.answers[answerIndex]
                            Button {
                                quizMachine = quizMachine.transition(
                                    .answerSubmitted(questionIndex: questionIndex, answer: answer)
                                )
                            } label: {
                                Text(answer)
                                    .foregroundStyle(.primary)
                                    .frame(maxWidth: .infinity)
                                    .padding()
                                    .border(.primary, width: 2)
                            }
                        }
                    }
                case .finished:
                    Text(quizMachine.quiz.questions.isEmpty ? "No questions available" : "Quiz complete")
                        .font(.title)
                }
            }
            .padding()
        }
        .navigationTitle(quizMachine.quiz.title)
    }
}

#Preview("Question") {
    NavigationStack {
        QuizQuestionScreen(quizMachine: .constant(.init(quiz: .init(
            id: "planets",
            title: "Planets",
            imageName: "planets-quiz",
            questions: [.init(
                questionText: "Which planet is closest to the Sun?",
                answers: ["Venus", "Mercury", "Earth", "Pluto"],
                correctAnswer: "Mercury"
            )]
        ))))
    }
}

#Preview("Empty Quiz") {
    NavigationStack {
        QuizQuestionScreen(quizMachine: .constant(.init(quiz: .init(
            id: "animals",
            title: "Animals",
            imageName: "animals-quiz",
            questions: []
        ))))
    }
}
