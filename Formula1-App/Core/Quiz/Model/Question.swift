//
//  Quiz.swift
//  Formula1-App
//
//  Created by Brandon on 12/18/23.
//

import Foundation
import SwiftUI

struct Question: Identifiable, Hashable {
    var id = NSUUID().uuidString
    var questionTitle: String
    var answers: [Answer]
}

struct Answer: Identifiable, Hashable {
    var answer: String
    var isCorrect: Bool
    var id = NSUUID().uuidString
}

