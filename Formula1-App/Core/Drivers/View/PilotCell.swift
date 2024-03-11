//
//  PilotCell.swift
//  Formula1-App
//
//  Created by Brandon on 12/26/23.
//

import SwiftUI

struct PilotCell: View {
    var driver: Driver
    
    var body: some View {
        VStack {
            ZStack(alignment: .topLeading) {
                numberAndFlagView
                    .padding(.top, 8)
                
                Image("\(driver.surname)")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 150, height: 180)
                    .padding(.top)
            }
            .frame(width: 170, height: 200)
            .background(Color("BackgroundColor2"))
            .cornerRadius(25)
            
            Text("\(driver.forename) \(driver.surname)")
                .foregroundColor(.black)
                .font(.caption2)
                .bold()
        }
    }
}

extension PilotCell {
    var numberAndFlagView: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .top, spacing: 4) {
                Text("\(driver.number)")
                    .bold()
                    .foregroundColor(.white)
                        
                    Image("\(driver.nationality)")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 25, height: 20)
                        .clipShape(Circle())

                   
    
                Spacer()
            }
            .padding(.leading)
        }
    }
}

//#Preview {
//    PilotCell()
//}
