//
//  QuestionProgressBar.swift
//  Formula1-App
//
//  Created by Brandon on 12/23/23.
//

import SwiftUI

struct QuestionProgressBar: View {
    private let currentQuestionIndex: Int
    private let totalQuestions: Int
    
    private var width: CGFloat = 300
    
    private var progress: CGFloat
        
    init(currentQuestionIndex: Int, totalQuestions: Int) {
        self.currentQuestionIndex = currentQuestionIndex
        self.totalQuestions = totalQuestions
        
        let result = Double(currentQuestionIndex) / Double(totalQuestions)
        let progress = CGFloat(result) * width
        self.progress = progress
    }

    var body: some View {
        VStack(spacing: 10) {
            Text("\(currentQuestionIndex + 1) / \(totalQuestions)")
            
            ZStack(alignment: .leading) {
                RoundedRectangle(cornerRadius: 25)
                    .frame(width: 300, height: 26)
                    .foregroundColor(.white)
                    .shadow(color: .gray, radius: 1)
                
                RoundedRectangle(cornerRadius: 25)
                    .frame(width: progress, height: 26)
                    .foregroundColor(.blue)
            }
        }
    }
}

//#Preview {
//    QuestionProgressBar()
//}
