//
//  QuizService.swift
//  QuizApp
//
//  Created by Chris Ching on 2026-09-28.
//
import Foundation

struct QuizService {
    
    func getQuizzes() -> [Quiz] {
        
        // Get a url to the file
        let url = Bundle.main.url(forResource: "data", withExtension: "json")
        
        // Check that the url is valid
        if let url {
            // URL exists
            
            do {
                // Load the data from the file
                let data = try Data(contentsOf: url)
                
                // Decode the JSON into Quiz array
                let decoder = JSONDecoder()
                let quizzes = try decoder.decode([Quiz].self, from: data)
                
                return quizzes
            }
            catch {
                // Data loading error or decoding error
                print("Error occurred: \(error)")
                return []
            }
            
        }
        else {
            // Error finding the file
            print("Couldn't find the file")
            return []
        }
        
        
    }
    
    
}
