//
//  QuestionCell.swift
//  Formula1-App
//
//  Created by Brandon on 12/18/23.
//

import SwiftUI

struct QuestionCell: View {
    @State var cellBackground: Color = Color.white
    @State private var selectedAnswer: Answer?

    @Binding var quiz: Quiz

    private var question: Question {
        return quiz.currentQuestion
    }
    
    var body: some View {
        VStack(spacing: 25) {
            Text(question.questionTitle)
                .bold()
                .padding(18)
                
            Spacer()
            
            VStack(spacing: 12) {
                ForEach(question.answers) { answer in
                    Button(action: {
                        onAnswerTap(answer)
                    }, label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 25)
                                .frame(width: 280, height: 62)
                                .foregroundColor(cellBackgroundColor(answer: answer))
                                .shadow(color: .gray, radius: 4)
                            
                            Text(answer.answer)
                        }
                    })
                }
                
                Spacer()
                
//                selectedAnswerAlert(selectedAnswer: selectedAnswer)
                if let selectedAnswer {
                    CustomImage(
                        imageName: selectedAnswer.isCorrect ? "greenCheckMark" : "sadFace",
                        width: 100,
                        height: 100
                    )
                }
            }
        }
    }
}

extension QuestionCell {
    func onAnswerTap(_ answer: Answer) {
        selectedAnswer = answer
        delayForNextQuestion()
        quiz.calculateCorrectAnswers(answer: answer)
    }
    
    func cellBackgroundColor(answer: Answer) -> Color {
        guard let selectedAnswer else { return .white }
        
        if answer == selectedAnswer {
            return answer.isCorrect ? .green : .red
        } else {
            return .white
        }
    }
    
    // this was refactored
//    func selectedAnswerAlert(selectedAnswer: Answer?)  -> CustomImage? {
//        guard let selectedAnswer else { return  nil }
//        
//        if selectedAnswer.isCorrect {
//            return CustomImage(imageName: "greenCheckMark", width: 100, height: 100)
//        } else {
//            return CustomImage(imageName: "sadFace", width: 100, height: 100)
//        }
//    }
        
    func delayForNextQuestion() {
        Task {
            try await Task.sleep(nanoseconds: 1_000_000_000)
            self.selectedAnswer = nil
            quiz.nextQuestion()
        }
    }
}

//
//#Preview {
//    QuestionCell()
//}
