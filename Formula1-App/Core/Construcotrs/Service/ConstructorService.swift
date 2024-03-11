//
//  ConstructorService.swift
//  Formula1-App
//
//  Created by Brandon on 12/15/23.
//

import Foundation

struct ConstructorService: HTTPDataDownloader {
    
    private func url(year: Int) -> String {
        let urlString = "https://racingmike.com/api/v1.0/f1-constructorresults?token=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9&year=\(year)"
        return urlString
    }
        
    func fetchAllConstructors(year: Int) async throws -> [Constructor] {
        let url = "https://racingmike.com/api/v1.0/f1-constructorresults?token=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9&year=\(year)"
        
        guard let newURL = URL(string: url) else { return [] }
        
        do {
            let (data, _) = try await URLSession.shared.data(from: newURL)
            let constructors = try JSONDecoder().decode([Constructor].self, from: data)
            print("DEBUG: Constructors Array Service \(constructors)")
            return constructors
        } catch {
            throw error
        }
    }
    
    func fetchConstructors(year: Int) async throws -> [Constructor] {
        do {
           return try await fetchData(as: [Constructor].self, endpoint: url(year: year))
        } catch {
            throw error
        }
    }
}
