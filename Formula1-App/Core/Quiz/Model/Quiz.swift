//
//  Quiz.swift
//  Formula1-App
//
//  Created by Brandon on 12/26/23.
//

import Foundation

struct Quiz {
    var questions: [Question]
    var isPassing: Bool = false
    var isDone: Bool = false
    var currentQuestionIndex: Int = 0
    var finalScore: Int = 0
    var numberOfCorrectQuestions: Int = 0
    
    var numberOfQuestions: Int {
        return questions.count
    }
    
    var currentQuestion: Question {
        questions[currentQuestionIndex]
    }
    
    var currentProgress: CGFloat {
        let percent = CGFloat(currentQuestionIndex + 1) / CGFloat(numberOfQuestions)
        return percent * 300 // need to remove this
    }
    
    var didPass: Bool {
        let score = computeFinalScore()
        return score >= 60
    }
    
    func computeFinalScore() -> Double {
        let count = Double(numberOfCorrectQuestions) / Double(numberOfQuestions)
        return count * 100
    }
    
//    mutating func calculateFinalScore() {
//        let count = Double(numberOfCorrectQuestions) / Double(numberOfQuestions)
//        let percent = count * 100
//        self.finalScore = Int(percent)
//        
//        if percent > 60 {
//            self.isPassing = true
//        } else {
//            self.isPassing = false
//        }
//    }

    mutating func calculateCorrectAnswers(answer: Answer) {
        if answer.isCorrect == true {
            self.numberOfCorrectQuestions += 1
        }
    }
    
    mutating func nextQuestion() {
        if numberOfQuestions - 1 == currentQuestionIndex {
            self.isDone = true
        } else {
            currentQuestionIndex += 1
        }
    }
}
