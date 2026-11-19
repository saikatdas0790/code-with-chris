struct QuizMachine {
    enum MachineState {
        case Loaded(quizQuestion: String, quizAnswer: QuizAnswer)
        case Submitted
    }

    struct MachineContext {

    }

    enum MachineEvent {
        case AnswerSubmitted(answerChosen: String)
    }

    struct QuizAnswer {
        public struct Options {
            let option1: String
            let option2: String
            let option3: String
            let option4: String
        }

        let options: Options
        let correctAnswer: String
    }

    var currentState: MachineState
    var currentContext: MachineContext

    init(
        question: String,
        option1: String,
        option2: String,
        option3: String,
        option4: String,
        correctAnswer: String
    ) {
        self.currentState = MachineState.Loaded(
            quizQuestion: question,
            quizAnswer: QuizAnswer(
                options: QuizAnswer.Options(
                    option1: option1,
                    option2: option2,
                    option3: option3,
                    option4: option4
                ),
                correctAnswer: correctAnswer
            )
        )
        self.currentContext = MachineContext()
    }

    func transition(eventReceived: MachineEvent) {
        switch eventReceived {
        case .AnswerSubmitted(let answerChosen):
            print(answerChosen)
        }
    }
}
