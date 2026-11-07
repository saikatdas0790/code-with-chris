import Playgrounds

#Playground {
    var questionAnswers: [String] = ["Jupiter", "Mars", "Earth"]
    questionAnswers[0] = "Saturn"
    questionAnswers.append("Pluto")
    questionAnswers.insert("Uranus", at: 1)
    print(questionAnswers.count)
    questionAnswers[questionAnswers.count - 1]
    
}
