struct QuizListMachine {
    var quizMachines: [QuizMachine]

    init(quizList: [QuizMachine.Quiz]) {
        quizMachines = quizList.map(QuizMachine.init(quiz:))
    }

    struct QuizMachine: Identifiable {
        struct Quiz {
            let id: String
            let title: String
            let imageName: String
            let questions: [Question]
        }

        struct Question {
            let questionText: String
            let answers: [String]
            let correctAnswer: String
        }

        enum State: Equatable {
            case answering(questionIndex: Int)
            case finished
        }

        enum Event {
            case answerSubmitted(questionIndex: Int, answer: String)
        }

        let quiz: Quiz
        private(set) var state: State
        var id: String { quiz.id }

        init(quiz: Quiz) {
            self.quiz = quiz
            state = quiz.questions.isEmpty ? .finished : .answering(questionIndex: 0)
        }

        func transition(_ event: Event) -> Self {
            var nextMachine = self
            switch (state, event) {
            case let (.answering(questionIndex), .answerSubmitted(submittedIndex, answer))
                where submittedIndex == questionIndex && quiz.questions[questionIndex].answers.contains(answer):
                let nextQuestionIndex = questionIndex + 1
                nextMachine.state = quiz.questions.indices.contains(nextQuestionIndex)
                    ? .answering(questionIndex: nextQuestionIndex)
                    : .finished
            default:
                break
            }
            return nextMachine
        }
    }
}
