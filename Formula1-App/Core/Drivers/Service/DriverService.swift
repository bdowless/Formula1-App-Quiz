//
//  DriverService.swift
//  Formula1-App
//
//  Created by Brandon on 11/16/23.
//

import Foundation

protocol DriverServiceProtocol {
    func fetchAllDriversAsync(year: Int) async throws -> [Driver]
}

struct DriverService: DriverServiceProtocol, HTTPDataDownloader {
    
    
    func driverURL(year: Int) -> String {
        let url = "https://racingmike.com/api/v1.0/f1-driversinfo?token=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9&year=\(year)"
        return url
    }
    
    func fetchAllDriversAsync(year: Int) async throws -> [Driver] {
        let urlString = driverURL(year: year)
        
        do {
            let drivers = try await fetchData(as: [Driver].self, endpoint: urlString)
            return drivers
        } catch {
            let error = error as? ErrorEnum ?? .unkownError(error: error)
            throw error
        
        }
    }
    
    func fetchAllDrivers(completion: @escaping (Result<[Driver], Error>) -> Void) {
         let url = "https://racingmike.com/api/v1.0/f1-driversinfo?token=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9&year=2023"
        guard let URL = URL(string: url) else { return }
        
        URLSession.shared.dataTask(with: URL, completionHandler: { data, response, error in
            if let error = error {
                print("we received an \(error)")
                return
            }
            guard let response = response else {
                print("Invalid response code \(response)")
                return
            }
            guard let data = data else { return }
            print("DEBUG: We have Data \(data)")
            
            do {
                let drivers = try JSONDecoder().decode([Driver].self, from: data)
                print("\(drivers)")
                completion(.success(drivers))
            } catch {
                completion(.failure(error))
            }
        }).resume()
    }
}
