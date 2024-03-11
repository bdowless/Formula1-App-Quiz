//
//  ProgressBarView.swift
//  Formula1-App
//
//  Created by Brandon on 12/19/23.
//

import SwiftUI

struct ProgressBarView: View {
    @State var barWidth: CGFloat = 280
    @Binding var currentPercent: Int
    @State var totalCount: Int
    @Binding var currentCount: Int

    
    var body: some View {
        VStack(spacing: 12) {
            
            Text("\(currentCount) / \(totalCount)")
            
            ZStack(alignment: .leading) {
                RoundedRectangle(cornerRadius: 25)
                    .frame(width: barWidth, height: 20)
                    .foregroundColor(Color.black.opacity(0.1))
                    .shadow(color: .gray, radius: 2)
                
                RoundedRectangle(cornerRadius: 25)
                    .frame(width: calculateProgress(width: barWidth, percent: currentPercent), height: 20)
                    .background(
                        LinearGradient(colors: [ Color("lightRed"), Color("Ferrari")], startPoint: .leading, endPoint: .trailing)
                            .clipShape(RoundedRectangle(cornerRadius: 25))
                    )
                    .foregroundColor(.clear)
                
            }
        }
    }
    
    func calculateProgress(width: CGFloat, percent: Int) -> CGFloat {
        let multiplier = width / 100
        let percent = CGFloat(percent * 10)
        return multiplier * percent
    }
}

//#Preview {
//    ProgressBarView()
//}
