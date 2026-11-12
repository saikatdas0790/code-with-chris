import Playgrounds
import SwiftUI

struct ContentView: View {
    @State var someString = "Hello"

    func updateSomeString() {
        someString = "hi"
    }

    var body: some View {
        VStack {
            Text("Quiz Time").padding().font(.largeTitle).bold()

            Image("planets").resizable().scaledToFit()

            Text("Which planet is the largest in our solar system?")
                .font(.title).multilineTextAlignment(.center).bold()

            HStack {
                Button("Earth") {

                }
                Button("Mars") {

                }
            }

            Text(someString)

            HStack {
                Button("Jupiter") {

                }
                Button("Saturn") {

                }
            }
        }
    }
}

#Preview {
    ContentView()
}

#Playground {
    _ = 1 + 2
}
