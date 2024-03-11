//
//  QuizHomeScreen.swift
//  Formula1-App
//
//  Created by Brandon on 12/18/23.
//


import SwiftUI

struct QuizHomeScreen: View {

    @State var quiz = QuizMockData().quiz
    
    var body: some View {
        if quiz.isDone {
            QuizCompletionView(quiz: quiz)
        } else {
            VStack {
                QuestionCell(quiz: $quiz)
       
                QuestionProgressBar(currentQuestionIndex: quiz.currentQuestionIndex, totalQuestions: quiz.numberOfQuestions)
            }
        }

    }
}
#Preview {
    QuizHomeScreen()
}

/*
 We didn't need to pass the quiz as a binding to the question progress bar
 Everytime the quiz updates, the view redraws, we just need to pass along the data the progress bar needs
 It will pass along the updated quiz data and compute everything as needed 
 
 As a takeaway from this, we only need to use bindings when we update the value from the child view.
*/
