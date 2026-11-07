import Playgrounds
import SwiftUI

#Playground {
    
    let a = ["Mars", "Earth", "Pluto", "Neptune", "Jupiter"]
    
    // Basic for loop over a range
    for i in 1...10 {
        print("\(i) Hello, Playground!")
    }
    
    // for loop over an array
    for i in 0..<a.count {
        //print(a[i])
    }
    
    for item in a {
        print(item)
    }
    
    // ForEach loop for dynamically generating SwiftUI elements
    ForEach(a, id: \.self) { answer in
        Text(answer)
    }
}
