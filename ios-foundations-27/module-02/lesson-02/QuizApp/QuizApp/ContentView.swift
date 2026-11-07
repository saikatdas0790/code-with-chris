import SwiftUI

struct QuizQuestion {
    let questionText: String = "Which planet is the largest in our solar system?"
    let answer1: String = "Earth"
    let answer2: String = "Mars"
    let answer3: String = "Jupiter"
    let answer4: String = "Saturn"
    let correctAnswer: String = "Jupiter"
}

struct ContentView: View {
    
    @State var resultMessage = ""
    let question = QuizQuestion()
    
    var body: some View {
        
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
                    Button(question.answer1) {
                        // Check if Earth is the right answer
                        checkAnswer(answer: question.answer1)
                    }
                    .frame(maxWidth: .infinity)
                    .padding()
                    .border(.white, width: 2)
                    
                    Button(question.answer2) {
                        // Check if Mars is the right answer
                        checkAnswer(answer: question.answer2)
                    }
                    .frame(maxWidth: .infinity)
                    .padding()
                    .border(.white, width: 2)
                }
                
                HStack {
                    Button(question.answer3) {
                        // Check if Jupiter is the right answer
                        checkAnswer(answer: question.answer3)
                    }
                    .frame(maxWidth: .infinity)
                    .padding()
                    .border(.white, width: 2)
                    
                    Button(question.answer4) {
                        // Check if Saturn is the right answer
                        checkAnswer(answer: question.answer4)
                    }
                    .frame(maxWidth: .infinity)
                    .padding()
                    .border(.white, width: 2)
                }
                
                
                Spacer()
                
                Text(resultMessage)
                    .font(.headline)
                
                Spacer()
            }
            .foregroundStyle(.white)
            
        }
        
        
        
        
    }
    
    func checkAnswer(answer: String) {
        // Check answer that is passed in
        if answer == question.correctAnswer {
            resultMessage = "You're correct!"
        }
        else {
            resultMessage = "That's not correct. Please try again."
        }
        
    }
}

#Preview {
    ContentView()
}
