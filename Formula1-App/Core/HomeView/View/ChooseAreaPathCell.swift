//
//  ChooseAreaPathCell.swift
//  Formula1-App
//
//  Created by Brandon on 12/18/23.
//

import SwiftUI

struct ChooseAreaPathCell: View {
    let headline: String
    let image: Image
    
    var body: some View {
        VStack(spacing: 12) {
            self.image
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
                .foregroundColor(.red)
            
            Text("\(headline)")
                .bold()
                .foregroundColor(.red)
        }
        .foregroundColor(.red)
        .frame(width: UIScreen.main.bounds.width - 64, height: 150)
        .background(.white)
        .cornerRadius(25)
        .shadow(color: .gray.opacity(0.5), radius: 4)
    }
}

#Preview {
    ChooseAreaPathCell(headline: "Constructor", image: Image(systemName: "person.fill"))
}
