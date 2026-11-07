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
                
                ForEach (question.answers, id: \.self) { answer in
                    
                    Button(answer) {
                        // Check if selected answer is the right answer
                        viewModel.checkAnswer(answer: answer)
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
