//
//  ConstructorView.swift
//  Formula1-App
//
//  Created by Brandon on 12/15/23.
//

import SwiftUI

struct ConstructorViewList: View {
    @ObservedObject var viewModel: ConstructorViewModel
    @State var currentYear = 2015
    
    init(year: Int) {
        self.viewModel = ConstructorViewModel(service: ConstructorService())
    }
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            ScrollView {
                
                DropDownYearView(currentYear: $currentYear)

                ForEach(viewModel.constructorsArray) { index in
                    ConstructorHelperView(constructorName: index.name, constructorImage: index.constructorRef, constructorpPosition: index.pos)
                }
            }
            .foregroundColor(.black)
            .background(Color.black)


            .onChange(of: currentYear, { _, newValue in
                Task { await viewModel.fetchAllConstructors(year: newValue) }
            })
        .navigationTitle("Standings")
        .foregroundColor(Color.white)
        }

    }
}

#Preview {
    ConstructorViewList(year: 2023)
}
