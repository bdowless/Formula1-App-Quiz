//
//  ConstructorHelperView.swift
//  Formula1-App
//
//  Created by Brandon on 12/26/23.
//

import Foundation

import SwiftUI

struct ConstructorHelperView: View {
    let constructorName: String
    let constructorImage: String
    let constructorpPosition: Int
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 25)
                .frame(height: 120)
                .foregroundColor(Color("BackgroundColor"))
                .shadow(color: .gray, radius: 1)
            
            HStack(spacing: 12) {
                ZStack {
                    VStack(spacing: 1) {
                        Image("\(constructorImage)")
                            .resizable()
                            .foregroundColor(.blue)
                            .scaledToFill()
                            .frame(width: 64, height: 64)
                            .clipShape(Circle())
                            .padding()
                    }
                }
                
                Text(constructorName)
                    .foregroundColor(.white)
                    .bold()
                
                Spacer()
                
                ZStack() {
                    Circle()
                        .frame(width: 50, height: 50)
                        .foregroundColor(.black)
                        .shadow(color: .red, radius: 1)
                    
                    Text("\(constructorpPosition)")
                        .foregroundColor(.white)
                }
                .padding()
            }
        }
    }
}
