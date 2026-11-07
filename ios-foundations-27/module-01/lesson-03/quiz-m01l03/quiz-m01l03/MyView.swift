import SwiftUI

struct ContentView: View {
    
    @State var resultMessage = "You're correct!"
    
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
                
                Text("Which planet is the largest in our solar system?")
                    .font(.title)
                    .bold()
                    .multilineTextAlignment(.center)
                    
                
                Spacer()
                
                HStack {
                    Button("Earth") {
                        // Check if Earth is the right answer
                        checkAnswer(answer: "Earth")
                    }
                    
                    Button("Mars") {
                        // Check if Mars is the right answer
                        checkAnswer(answer: "Mars")
                    }
                }
                
                HStack {
                    Button("Jupiter") {
                        // Check if Jupiter is the right answer
                        checkAnswer(answer: "Jupiter")
                    }
                    
                    Button("Saturn") {
                        // Check if Saturn is the right answer
                        checkAnswer(answer: "Saturn")
                    }
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
        // TODO: Check answer that is passed in
        resultMessage = "You're wrong"
    }
}

#Preview {
    ContentView()
}
