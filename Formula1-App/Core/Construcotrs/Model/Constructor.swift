//
//  Constructor.swift
//  Formula1-App
//
//  Created by Brandon on 12/15/23.
//

import Foundation

struct Constructor: Identifiable, Decodable {
    var pos: Int
    var constructorId: Int
    var points: Int
    var name: String
    var nationality: String
    var url: String
    var constructorRef: String
    
    var id: Int {
        constructorId
    }
    
}
