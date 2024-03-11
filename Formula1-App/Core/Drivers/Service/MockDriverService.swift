//
//  MockDriverService.swift
//  Formula1-App
//
//  Created by Brandon on 12/28/23.
//

import Foundation

struct MockDriverService: DriverServiceProtocol {
    func fetchAllDriversAsync(year: Int) async throws -> [Driver] {
        return [
            .init(driverId: 1, forename: "Max", surname: "Verstappen", number: 30, nationality: "Dutch"),
            .init(driverId: 2, forename: "Checo", surname: "Perez", number: 30, nationality: "Mexico"),
        ]
    }
}
