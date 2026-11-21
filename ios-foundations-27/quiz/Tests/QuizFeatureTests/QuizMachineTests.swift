import Testing
@testable import QuizFeature

@MainActor
struct QuizMachineTests {
    private let questions: [QuizListMachine.QuizMachine.Question] = [
        .init(questionText: "First question", answers: ["A", "B"], correctAnswer: "A"),
        .init(questionText: "Second question", answers: ["A", "C"], correctAnswer: "C"),
    ]

    @Test func progressingOneQuizLeavesOtherQuizzesUntouched() {
        var quizListMachine = QuizListMachine(quizList: [
            .init(id: "first", title: "First Quiz", imageName: "", questions: questions),
            .init(id: "second", title: "Second Quiz", imageName: "", questions: questions),
        ])

        quizListMachine.quizMachines[0] = quizListMachine.quizMachines[0].transition(
            .answerSubmitted(questionIndex: 0, answer: "B")
        )

        #expect(quizListMachine.quizMachines[0].state == .answering(questionIndex: 1))
        #expect(quizListMachine.quizMachines[1].state == .answering(questionIndex: 0))
    }

    @Test func invalidAndStaleAnswersDoNotAdvanceTheQuiz() {
        let initialMachine = QuizListMachine.QuizMachine(quiz: .init(
            id: "first", title: "First Quiz", imageName: "", questions: questions
        ))
        let invalidAnswer = initialMachine.transition(.answerSubmitted(questionIndex: 0, answer: "C"))
        #expect(invalidAnswer.state == .answering(questionIndex: 0))

        let nextQuestion = initialMachine.transition(.answerSubmitted(questionIndex: 0, answer: "A"))
        let staleAnswer = nextQuestion.transition(.answerSubmitted(questionIndex: 0, answer: "A"))
        #expect(staleAnswer.state == .answering(questionIndex: 1))

        let finished = nextQuestion.transition(.answerSubmitted(questionIndex: 1, answer: "C"))
        #expect(finished.state == .finished)
        #expect(finished.transition(.answerSubmitted(questionIndex: 1, answer: "C")).state == .finished)
    }

    @Test func emptyQuizHasNoActiveQuestion() {
        let emptyQuiz = QuizListMachine.QuizMachine(quiz: .init(
            id: "empty", title: "Empty Quiz", imageName: "", questions: []
        ))

        #expect(emptyQuiz.state == .finished)
        #expect(emptyQuiz.transition(.answerSubmitted(questionIndex: 0, answer: "A")).state == .finished)
    }
}
