import SwiftUI



struct QuizView: View {
    
    @State var viewModel = QuizViewModel()
    
    
    var body: some View {
        
        // A reference to the current question
        let question = viewModel.questions[viewModel.currentQuestionIndex]
        
        ZStack {
            
            Color.black
                .ignoresSafeArea()
            
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
                
                HStack {
                    Button(question.answers[0]) {
                        // Check if Earth is the right answer
                        viewModel.checkAnswer(answer: question.answers[0])
                    }
                    .frame(maxWidth: .infinity)
                    .padding()
                    .border(.white, width: 2)
                    
                    Button(question.answers[1]) {
                        // Check if Mars is the right answer
                        viewModel.checkAnswer(answer: question.answers[1])
                    }
                    .frame(maxWidth: .infinity)
                    .padding()
                    .border(.white, width: 2)
                }
                
                HStack {
                    Button(question.answers[2]) {
                        // Check if Jupiter is the right answer
                        viewModel.checkAnswer(answer: question.answers[2])
                    }
                    .frame(maxWidth: .infinity)
                    .padding()
                    .border(.white, width: 2)
                    
                    Button(question.answers[3]) {
                        // Check if Saturn is the right answer
                        viewModel.checkAnswer(answer: question.answers[3])
                    }
                    .frame(maxWidth: .infinity)
                    .padding()
                    .border(.white, width: 2)
                }
                
                
                Spacer()
                
                Text(viewModel.resultMessage)
                    .font(.headline)
                
                Spacer()
            }
            .foregroundStyle(.white)
            
        }
        
        
        
        
    }
    
    
}

#Preview {
    QuizView()
}
