import SwiftUI



struct QuizView: View {
    
    @State var viewModel: QuizViewModel
    
    init(quiz: Quiz) {
        // Create a new instance of QuizViewModel and pass through the selected quiz
        viewModel = QuizViewModel(q: quiz)
    }
    
    var body: some View {
        
        // A reference to the current question
        let question = viewModel.questions[viewModel.currentQuestionIndex]
        
        ZStack {
            
            if viewModel.hasQuizCompleted == true {
                // Completed message
                Text("Quiz Completed")
                    .font(.largeTitle)
                    .bold()
            }
            else {
                // Question
                VStack {
                    
                    Spacer()
                    
                    
                    
                    Text(question.text)
                        .font(.title)
                        .bold()
                        .multilineTextAlignment(.center)
                        
                    
                    Spacer()
                    
                    if viewModel.hasAnswered == false {
                        
                        // Check the question type
                        switch question.type {
                        case .multipleChoice, .trueFalse:
                            ForEach (question.answers, id: \.self) { answer in
                                
                                Button(answer) {
                                    // Check if selected answer is the right answer
                                    viewModel.checkAnswer(answer: answer)
                                }
                                .frame(maxWidth: .infinity)
                                .padding(.vertical)
                                .foregroundStyle(Color.primary)
                                .border(Color.primary, width: 2)
                                
                            }
                       
                        case .textEntry:
                            // TODO: text entry view
                            Text("TODO Text entry")
                        }
                        
                        
                    }
                    else {
                        Text(viewModel.resultMessage)
                            .font(.headline)
                        
                        Spacer()
                        
                        Button ("Continue") {
                            // Call method in view model to advance question
                            viewModel.advanceQuestion()
                        }
                        .frame(maxWidth: .infinity)
                        .padding(.vertical)
                        .foregroundStyle(Color.primary)
                        .border(Color.primary, width: 2)
                        
                    }
                    
                    Spacer()
                }
                .padding(.horizontal)
            }
            
        }
        .navigationTitle(viewModel.quiz.title)
        
        
        
    }
    
    
}

#Preview {
    let service = QuizService()
    let quizzes = service.getQuizzes()
    NavigationStack {
        QuizView(quiz: quizzes[0])
    }
}
