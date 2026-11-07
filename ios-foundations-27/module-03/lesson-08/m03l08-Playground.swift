import Playgrounds

#Playground {
    
    enum QuestionType {
        case multipleChoice
        case trueFalse
        case textEntry
    }
    
    let type: QuestionType = .trueFalse
    
    // Switch Statement
    switch type {
    case .multipleChoice:
        // Show MC
    case .trueFalse:
        // Show TF
    case .textEntry:
        // Show Text
    }
    
    // IF Statement
    if type == .multipleChoice {
        // Show MC
    }
    else if type == .trueFalse {
        // Show TF
    }
    
}
