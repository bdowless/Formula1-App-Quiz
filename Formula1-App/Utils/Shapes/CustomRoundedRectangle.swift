//
//  CustomRoundedRectangle.swift
//  Formula1-App
//
//  Created by Brandon on 12/26/23.
//

import SwiftUI

struct CustomRoundedRectangle: View {
    var cornerRadius: CGFloat
    var height: CGFloat?
    var width: CGFloat?
    var foregroundColor: Color
    var opacity: CGFloat?
    
    var body: some View {
        RoundedRectangle(cornerRadius: cornerRadius)
            .frame(width: width, height: height)
            .foregroundColor(foregroundColor)
            .shadow(color: .gray, radius: 4)
            .opacity(opacity ?? 1.0)
    }
}
