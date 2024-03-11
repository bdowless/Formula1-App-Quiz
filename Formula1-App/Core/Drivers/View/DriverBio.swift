//
//  DriverBio.swift
//  Formula1-App
//
//  Created by Brandon on 12/14/23.
//

import SwiftUI

struct DriverBio: View {
    let driver: Driver
    
    var body: some View {
        VStack(spacing: 20) {
            ZStack {
                CustomRoundedRectangle(cornerRadius: 25, height: 40, width: 340, foregroundColor: .white, opacity: 0.4)
                
                HStack(spacing: 8) {
                    Text("\(driver.forename)")
                        .bold()
                    Text("\(driver.surname)")
                        .bold()
                }
            }
            
            ZStack {
                CustomRoundedRectangle(cornerRadius: 25, height: 260, width: 340, foregroundColor: .white, opacity: 0.4)
                
                Image(driver.surname)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 240)
            }
            
            Text("Number: \(driver.number)")
            
            Text("\(driver.forename) races to win and has made some great overtakes thorughout his racing career, his greatest aspect is corner exit. He always aims to win")
                .padding()
            
            Spacer()
        }
    }
}

#Preview {
    DriverBio(driver: Driver(driverId: 20, forename: "Lewis", surname: "Hamilton", number: 44, nationality: "England"))
}
