import Playgrounds

#Playground {
    var name: String = "Tom"
    var missingName: String? = "Chris"
    
    // Tom
    print(name)
    
    // Unwrapping optionals with if let
    if let missingName {
        // Optional has a value, access it with missingName
        print(missingName)
    }
    else {
        print("No Value")
    }
    
    // Force unwrapping
    // print(missingName!)
    
    // Nil Coalescing
    print(missingName ?? "Guest")
}
