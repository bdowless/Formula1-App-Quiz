//
//  DropDownYearView.swift
//  Formula1-App
//
//  Created by Brandon on 12/26/23.
//

import SwiftUI

struct DropDownYearView: View {
    private let yearArray: [Int] = [2020, 2021, 2022, 2023]
    @Binding var currentYear: Int
    
    var body: some View {
        Menu("Select Year >") {
            ForEach(yearArray, id: \.self) { year in
                Button(action: {
                    self.currentYear = year
                }, label: {
                    Text("\(year)")
                })
            }
        }
        .frame(width: 200, height: 24)
        .background(Color.gray)
        .cornerRadius(20)
        .foregroundColor(.black)
        .padding()
    }
}
