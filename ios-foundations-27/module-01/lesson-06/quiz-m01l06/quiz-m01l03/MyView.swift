import SwiftUI

struct ContentView: View {
    
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
                    Text("Earth")
                    Text("Mars")
                }
                
                HStack {
                    Text("Jupiter")
                    Text("Saturn")
                }
                
                Spacer()
            }
            .foregroundStyle(.white)
            
        }
        
        
        
        
    }
}

#Preview {
    ContentView()
}
