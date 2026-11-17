import Playgrounds
import SwiftUI

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

struct ContentView: View {

    @State var quizMachine = QuizMachine(
        question: "Which planet is known as the Red Planet?",
        option1: "Earth",
        option2: "Mars",
        option3: "Jupiter",
        option4: "Saturn",
        correctAnswer: "Mars"
    )

    var body: some View {
        VStack {
            Text("Quiz Time").padding().font(.largeTitle).bold()

            Image("planets").resizable().scaledToFit()

            switch quizMachine.currentState {
            case .Loaded(let quizQuestion, let quizAnswer):

                Text(quizQuestion)
                    .font(.title).multilineTextAlignment(.center).bold()

                HStack {
                    Button(quizAnswer.options.option1) {
                        quizMachine
                            .transition(
                                eventReceived:
                                        .AnswerSubmitted(answerChosen: quizAnswer.options.option1)
                            )
                    }
                    Button(quizAnswer.options.option2) {
                        quizMachine
                            .transition(
                                eventReceived:
                                        .AnswerSubmitted(answerChosen: quizAnswer.options.option2)
                            )
                    }
                }

                HStack {
                    Button(quizAnswer.options.option3) {
                        quizMachine
                            .transition(
                                eventReceived:
                                        .AnswerSubmitted(answerChosen: quizAnswer.options.option3)
                            )
                    }
                    Button(quizAnswer.options.option4) {
                        quizMachine
                            .transition(
                                eventReceived:
                                        .AnswerSubmitted(answerChosen: quizAnswer.options.option4)
                            )
                    }
                }

            case _:
                Text("No quiz loaded")
            }
        }
    }
}

#Preview {
    ContentView()
}

#Playground {
    _ = 1 + 2
}
