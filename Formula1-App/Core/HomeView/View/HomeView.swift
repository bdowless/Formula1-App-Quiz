//
//  ChooseAreaPath.swift
//  Formula1-App
//
//  Created by Brandon on 12/18/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 24) {
                ForEach(AreaPathEnum.allCases) { area in
                    NavigationLink(value: area) {
                        ChooseAreaPathCell(headline: area.rawValue, image: area.customImage)
                    }
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    CustomImage(imageName: "f1LogoRed", width: 80, height: 80)
                }
            }
            .navigationDestination(for: AreaPathEnum.self) { area in
                switch area {
                case.constructor:
                    ConstructorViewList(year: 2023)
                case .driver:
                    DriverListView()
                case .schedule:
                    Text("Schedule")
                case .quiz:
                    QuizHomeScreen()
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
