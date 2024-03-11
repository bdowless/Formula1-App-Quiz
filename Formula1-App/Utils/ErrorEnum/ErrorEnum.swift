//
//  ErrorEnum.swift
//  Formula1-App
//
//  Created by Brandon on 12/27/23.
//

import Foundation


    enum ErrorEnum: Error {
        case invalidData
        case invalidURL
        case JsonParsingFailure
        case requestFailed(description: String)
        case invalidStatusCode(statusCode: Int)
        case unkownError(error: Error)
        
        
        var errorDescription: String {
            switch self {
                
            case .invalidData:
                return "Invalid Dataaaa"
            case .JsonParsingFailure:
                return "JsonFailure"
            case .requestFailed(description: let description):
                return "Invalid request \(description)"
            case .invalidStatusCode(statusCode: let statusCode):
                return "Invalid statusCode \(statusCode)"
            case .unkownError(error: let error):
                return "Invalid error \(error)"
            case .invalidURL:
                return "Invalid URL"
            }
        }
    }

