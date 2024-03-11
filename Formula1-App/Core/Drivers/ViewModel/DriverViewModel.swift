//
//  DriverViewModel.swift
//  Formula1-App
//
//  Created by Brandon on 11/16/23.
//

import Foundation

class DriverViewModel: ObservableObject {
    @Published var drivers = [Driver]()
    @Published var error: String?
    @Published var showError = false
    var errorMessage: ErrorEnum = .invalidData
    private var year: Int
    
    private let service: DriverServiceProtocol
    
    init(service: DriverServiceProtocol, year: Int) {
        self.year = year
        self.service = service
        Task { await fetchAlldriversAsync() }
    }
    
    @MainActor
    func fetchAlldriversAsync() async {
        do {
            self.drivers = try await service.fetchAllDriversAsync(year: year)
            self.showError = false
        } catch {
            self.showError = true
            self.errorMessage = .requestFailed(description: "Failed to fetch Data to ViewModel")
            guard let error = error as? ErrorEnum else { return }
            self.error = error.errorDescription
                print("DEBUGG: error is \(error)")
        }
    }
    
//    func fetchDrivers() {
//        service.fetchAllDrivers { result in
//            DispatchQueue.main.async {
//                switch result {
//                case.success(let driver):
//                    self.drivers = driver
//                case.failure(let error):
//                    self.error = error
//                }
//            }
//        }
//    }
}
