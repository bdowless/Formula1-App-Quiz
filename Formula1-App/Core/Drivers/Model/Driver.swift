//
//  Driver.swift
//  Formula1-App
//
//  Created by Brandon on 11/16/23.
//

import Foundation
import UIKit

struct Driver: Codable, Identifiable, Hashable {
    var driverId: Int
    var forename: String
    var surname: String
    var number: Int
    var nationality: String
    
    var id: Int {
        driverId
    }
    
//    enum CodingKeys: String, CodingKey {
//        case id = "driverId"
//    }
}
