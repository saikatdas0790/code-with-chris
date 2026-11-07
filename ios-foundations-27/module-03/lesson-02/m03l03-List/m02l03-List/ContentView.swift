import SwiftUI

struct ContentView: View {
    
    let data = ["Planets", "Animals", "Geography", "Planets"]
    
    let questionData = [
        Question(id: UUID().uuidString, text: "Earth"),
        Question(id: UUID().uuidString, text: "Mars")
    ]
    
    var body: some View {
        
        List {
            ForEach(questionData) { q in
                Text(q.text)
            }
        }
    }
}

#Preview {
    ContentView()
}
