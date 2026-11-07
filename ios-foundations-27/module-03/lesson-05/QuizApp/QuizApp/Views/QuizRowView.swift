//
//  QuizRowView.swift
//  QuizApp
//
//  Created by Chris Ching on 2026-10-01.
//

import SwiftUI

struct QuizRowView: View {
    
    var quiz: Quiz
    
    var body: some View {
        
        HStack (spacing: 20) {
            Image(quiz.imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 100)
                .clipShape(RoundedRectangle(cornerRadius: 15))
            Text(quiz.title)
                .font(.title)
                .bold()
        }
    }
}

#Preview {
    QuizRowView(quiz: Quiz(id: "1", title: "Planets", imageName: "planets-quiz", questions: []))
}
