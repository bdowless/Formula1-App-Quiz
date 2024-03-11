//
//  QuestionViewModel.swift
//  Formula1-App
//
//  Created by Brandon on 12/26/23.
//

import Foundation
import SwiftUI

struct QuestionViewModel {
    
    @Binding var answer: Answer
    @Binding var selectedAnswer: Answer?
    
    func cellBackgroundColor(answer: Answer) -> Color {
        guard let selectedAnswer else { return .white}
        
        if answer == selectedAnswer {
            return answer.isCorrect ? .green : .red
        } else {
            return .white
        }
    }
    
    
    func SelectedAnswerAlert(selectedAnswer: Answer?)  -> CustomImage? {
        guard let selectedAnswer else { return  nil  }
        
        if selectedAnswer.isCorrect {
            return CustomImage(imageName: "greenCheckMark", width: 100, height: 100)
                
        } else {
            return CustomImage(imageName: "sadFace", width: 100, height: 100)
            
        }
    }
}
