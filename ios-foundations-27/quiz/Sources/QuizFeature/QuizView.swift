import SwiftUI

public struct QuizView: View {
    public init() {}

    static let quizMachineList = [QuizMachine(
        question: "Which planet is the largest in our solar system?",
        option1: "Jupiter",
        option2: "Mars",
        option3: "Earth",
        option4: "Saturn",
        correctAnswer: "Jupiter"
    ), QuizMachine(
        question: "Which planet is closest to the sun?",
        option1: "Venus",
        option2: "Mercury",
        option3: "Earth",
        option4: "Pluto",
        correctAnswer: "Mercury"
    ), QuizMachine(
        question: "Which planet is known as the Red Planet?",
        option1: "Earth",
        option2: "Mars",
        option3: "Jupiter",
        option4: "Saturn",
        correctAnswer: "Mars"
    )]

    @State var quizMachine = quizMachineList[0]

    public var body: some View {
        VStack {
            Text("Quiz Time").padding().font(.largeTitle).bold()

            Image("planets", bundle: .module).resizable().scaledToFit()

            switch quizMachine.currentState {
            case .Loaded(let quizQuestion, let quizAnswer):

                Text(quizQuestion)
                    .font(.title).multilineTextAlignment(.center).bold()

                HStack {
                    OptionButton(textToDisplay: quizAnswer.options.option1) {
                        quizMachine.transition(
                            eventReceived: .AnswerSubmitted(
                                answerChosen: quizAnswer.options.option1
                            )
                        )
                    }

                    Button(quizAnswer.options.option2) {
                        quizMachine
                            .transition(
                                eventReceived:
                                    .AnswerSubmitted(
                                        answerChosen: quizAnswer.options.option2
                                    )
                            )
                    }.foregroundStyle(.primary).frame(maxWidth: .infinity).padding().border(
                        .primary,
                        width: 2
                    )
                }

                HStack {
                    Button(quizAnswer.options.option3) {
                        quizMachine
                            .transition(
                                eventReceived:
                                    .AnswerSubmitted(
                                        answerChosen: quizAnswer.options.option3
                                    )
                            )
                    }.foregroundStyle(.primary).frame(maxWidth: .infinity).padding().border(
                        .primary,
                        width: 2
                    )
                    Button(quizAnswer.options.option4) {
                        quizMachine
                            .transition(
                                eventReceived:
                                    .AnswerSubmitted(
                                        answerChosen: quizAnswer.options.option4
                                    )
                            )
                    }.foregroundStyle(.primary).frame(maxWidth: .infinity).padding().border(
                        .primary,
                        width: 2
                    )
                }

            case _:
                Text("No quiz loaded")
            }
        }
    }
}

struct OptionButton: View {
    let textToDisplay: String
    let eventHandler: () -> Void

    var body: some View {
        Button(textToDisplay, action: eventHandler)
            .foregroundStyle(.primary)
            .frame(maxWidth: .infinity)
            .padding()
            .border(.primary, width: 2)
    }
}

#Preview {
    QuizView()
}
