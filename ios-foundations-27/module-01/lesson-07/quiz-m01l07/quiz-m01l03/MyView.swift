import SwiftUI

struct ContentView: View {
    
    @State var resultMessage = ""
    
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
                    .frame(maxWidth: .infinity)
                    .padding()
                    .border(.white, width: 2)
                    
                    Button("Mars") {
                        // Check if Mars is the right answer
                        checkAnswer(answer: "Mars")
                    }
                    .frame(maxWidth: .infinity)
                    .padding()
                    .border(.white, width: 2)
                }
                
                HStack {
                    Button("Jupiter") {
                        // Check if Jupiter is the right answer
                        checkAnswer(answer: "Jupiter")
                    }
                    .frame(maxWidth: .infinity)
                    .padding()
                    .border(.white, width: 2)
                    
                    Button("Saturn") {
                        // Check if Saturn is the right answer
                        checkAnswer(answer: "Saturn")
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
        if answer == "Jupiter" {
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
