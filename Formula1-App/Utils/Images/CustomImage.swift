//
//  CustomImage.swift
//  Formula1-App
//
//  Created by Brandon on 12/26/23.
//

import SwiftUI

struct CustomImage: View {
    var imageName: String
    let width: CGFloat
    let height: CGFloat
    
    var body: some View {
        Image("\(imageName)")
            .resizable()
            .scaledToFit()
            .frame(width: width, height: height)
    }
}
