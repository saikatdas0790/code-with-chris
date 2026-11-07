import Playgrounds

#Playground {
    
    struct QuizQuestion {
        let questionText: String = "Which planet is closest to the sun?"
        let answer1: String = "Mercury"
        let answer2: String = "Venus"
        let answer3: String = "Earth"
        let correctAnswer: String = "Mercury"
        
        func myFunction() {
            print("Hello")
        }
    }
    
    let question = QuizQuestion()
    print(question.questionText)
    print(question.answer1)
    
    question.myFunction()
}
