import Playgrounds
import Foundation

#Playground {
    
    func decodeData() {
        let url = Bundle.main.url(forResource: "data", withExtension: "json") // URL?
        
        do {
            // Trying to execute the method that may throw an error
            try String(contentsOf: url!, encoding: .utf8) // URL
        }
        catch {
            // Catch the error and handle it
            print("Could not create string. Error: \(error)")
        }
        
    }
    
}
