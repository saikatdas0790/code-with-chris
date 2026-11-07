import SwiftUI



struct QuizView: View {
    
    @State var viewModel = QuizViewModel()
    
    
    var body: some View {
        
        // A reference to the current question
        let question = viewModel.questions[viewModel.currentQuestionIndex]
        
        ZStack {
            
            // Background
            Color.black
                .ignoresSafeArea()
            
            if viewModel.hasQuizCompleted == true {
                // Completed message
                Text("Quiz Completed")
                    .font(.largeTitle)
                    .bold()
                    .foregroundStyle(.white)
            }
            else {
                // Question
                VStack {
                    
                    Spacer()
                    
                    Text("Quiz Time")
                        .padding()
                        .font(.largeTitle)
                        .bold()
                        
                    
                    Image("planets")
                        .resizable()
                        .scaledToFit()
                    
                    Text(question.questionText)
                        .font(.title)
                        .bold()
                        .multilineTextAlignment(.center)
                        
                    
                    Spacer()
                    
                    if viewModel.hasAnswered == false {
                        ForEach (question.answers, id: \.self) { answer in
                            
                            Button(answer) {
                                // Check if selected answer is the right answer
                                viewModel.checkAnswer(answer: answer)
                            }
                            .frame(maxWidth: .infinity)
                            .padding()
                            .border(.white, width: 2)
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
                        .padding()
                        .border(.white, width: 2)
                    }
                    
                    Spacer()
                }
                .foregroundStyle(.white)
            }
            
        }
        
        
        
        
    }
    
    
}

#Preview {
    QuizView()
}
