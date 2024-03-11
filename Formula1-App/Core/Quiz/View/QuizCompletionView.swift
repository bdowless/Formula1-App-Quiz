//
//  QuizCompletionView.swift
//  Formula1-App
//
//  Created by Brandon on 12/18/23.
//

import SwiftUI

struct QuizCompletionView: View {
 var quiz: Quiz
    
    var body: some View {
        ZStack() {
            Color(quiz.isPassing ? .green : .red)
                
            
            VStack(spacing: 10) {
                ZStack() {
                    Circle()
                        .frame(width: 220, height: 220)
                        .foregroundColor(.white)
                        .shadow(color: .gray, radius: 2)
                    
                    Image(quiz.isPassing ? "congrats" : "sadFace")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                    
                }
                
                VStack(spacing: 10) {
                    Text(quiz.isPassing ? "You really know your F1" : "Keep Trying")
                        .foregroundColor(.black)
                        .bold()
                    
                    Text("\(quiz.finalScore) %")
                        .bold()
                        .font(.title)
                }
            }            
        }
    }
}

#Preview {
    QuizCompletionView(quiz: Quiz(questions: [        Question(questionTitle: "Who did alonso win his Titles with ",
                                                               answers: [Answer(answer: "Ferrari", isCorrect: false),
                                                                         Answer(answer: "Renault", isCorrect: true),
                                                                         Answer(answer: "Mercedes", isCorrect: false),
                                                                         Answer(answer: "Williams", isCorrect: false),])]))
}
