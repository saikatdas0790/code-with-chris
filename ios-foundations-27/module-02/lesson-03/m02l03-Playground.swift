import Playgrounds

#Playground {

    // Structs are value types, value types are shared as a copy
    // Classes are reference types, reference types are shared as a reference
    
    class Person {
        
        var name: String = "Bob"
    }
    
    var p1 = Person()
    print(p1.name)
    
    var p2 = p1
    p2.name = "Chris"
    print(p1.name + " " + p2.name)
}
