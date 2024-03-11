//
//  QuestionCounterTopView.swift
//  Formula1-App
//
//  Created by Brandon on 12/18/23.
//

import SwiftUI

struct QuestionCounterTopView: View {
    // var currentIndex
    // var totalQuestions
    @Binding var questionCounter: Int
    @State var index: Int
    var body: some View {
        ZStack {
            
            if questionCounter >= index {
                    Circle()
                        .foregroundColor(.red)
                        .shadow(color: .red, radius: 0)
                        .frame(width: 50, height: 50)
                    Image(systemName: "checkmark.circle")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                        .foregroundColor(.white)
            } else {
                Circle()
                    .foregroundColor(.white)
                    .shadow(color: .gray, radius: 2)
                    .frame(width: 50, height: 50)
                
                Text("\(index)")
            }
        }
        .frame(width: .infinity, height: 100)
    }
}

//#Preview {
//    QuestionCounterTopView()
//}
