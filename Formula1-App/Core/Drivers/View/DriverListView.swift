//
//  ContentView.swift
//  Formula1-App
//
//  Created by Brandon on 11/16/23.
//

import SwiftUI

struct DriverListView: View {
    @StateObject var viewModel = DriverViewModel(service: DriverService(), year: 2023)
    
    let columns: [GridItem] = [
        GridItem(.fixed(150), spacing: 40, alignment: nil),
        GridItem(.fixed(150), spacing: 40, alignment: nil)
    ]
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns) {
                ForEach(viewModel.drivers) { driver in
                    NavigationLink(value: driver) {
                        PilotCell(driver: driver)
                    }
                    
                }
            }
            .alert(isPresented: $viewModel.showError, content: {
                Alert(title: Text("Error"),
                      message: Text(viewModel.error ?? "Custom Error"))

            })
        }
        .navigationTitle("Drivers")
        .foregroundColor(.black)
        .navigationDestination(for: Driver.self) { driver in
            DriverBio(driver: driver)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        DriverListView()
    }
}
