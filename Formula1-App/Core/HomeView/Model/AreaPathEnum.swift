//
//  AreaPathEnum.swift
//  Formula1-App
//
//  Created by Brandon on 12/18/23.
//

import Foundation
import SwiftUI

enum AreaPathEnum: String, Identifiable, Hashable, CaseIterable  {
    case constructor = "Constructor"
    case driver = "Drivers"
    case schedule = "Schedule"
    case quiz = "F1 Quiz"
    
    var id: String {
        self.rawValue
    }
    
    var customImage: Image {
        switch self {
        case .constructor:
            return Image(systemName: "laurel.leading")
        case .driver:
            return Image(systemName: "person.3")
        case .schedule:
            return Image(systemName: "globe.europe.africa")
        case .quiz:
            return Image(systemName: "flag.checkered")
        }
    }
}
