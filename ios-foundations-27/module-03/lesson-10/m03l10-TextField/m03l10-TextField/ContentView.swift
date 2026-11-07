import SwiftUI
import Playgrounds

struct ContentView: View {
    
    @State var name: String = "Paul"
    
    var body: some View {
        TextField("Enter your name", text: $name)
            .textFieldStyle(.roundedBorder)
            .padding()
    }
}

#Preview {
    ContentView()
}

