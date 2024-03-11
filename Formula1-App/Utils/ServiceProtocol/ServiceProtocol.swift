//
//  ServiceProtocol.swift
//  Formula1-App
//
//  Created by Brandon on 12/28/23.
//

import Foundation


protocol HTTPDataDownloader {
    func fetchData<T:Decodable>(as type: T.Type, endpoint: String) async throws -> T
}

extension HTTPDataDownloader {
    func fetchData<T:Decodable>(as type: T.Type, endpoint: String) async throws -> T {
       guard let url = URL(string: endpoint) else {
           throw ErrorEnum.requestFailed(description: "Invalid URL")
       }
       let (data, response) = try await URLSession.shared.data(from: url)
       
       guard let response = response as? HTTPURLResponse else {
           throw ErrorEnum.requestFailed(description: "Ivalid Respone")
       }
       guard response.statusCode == 200 else {
           throw ErrorEnum.invalidStatusCode(statusCode: response.statusCode)
       }
       
       do {
           return try JSONDecoder().decode(T.self, from: data)
       } catch {
           throw ErrorEnum.invalidData
       }
   }
}
