//
//  uizArray.swift
//  Formula1-App
//
//  Created by Brandon on 12/18/23.
//

import Foundation

struct QuizMockData {
    let questions: [Question] = [
        Question(questionTitle: "Who has won the Most F1 Titles",
                 answers: [Answer(answer: "Hamilton", isCorrect: true),
                           Answer(answer: "Verstapen", isCorrect: false),
                           Answer(answer: "Shumacher", isCorrect: true),
                           Answer(answer: "Alonso", isCorrect: false),]
                ),
        Question(questionTitle: "Who won the 2023 Constructor Championship",
                 answers: [Answer(answer: "Ferrari", isCorrect: false),
                           Answer(answer: "Mclaren", isCorrect: false),
                           Answer(answer: "Mercedes", isCorrect: false),
                           Answer(answer: "Redbull", isCorrect: true),]),
        Question(questionTitle: "Who won the first race of the 2023 Season",
                 answers: [Answer(answer: "Russel", isCorrect: false),
                           Answer(answer: "Piastri", isCorrect: false),
                           Answer(answer: "Alonso", isCorrect: false),
                           Answer(answer: "Verstppen", isCorrect: true),]),
        Question(questionTitle: "Who won the 1991 Championship",
                 answers: [Answer(answer: "Senna", isCorrect: true),
                           Answer(answer: "Shumacher", isCorrect: false),
                           Answer(answer: "Prost", isCorrect: false),
                           Answer(answer: "Mansell", isCorrect: true),]),
        Question(questionTitle: "Who is Max verstappens TeamMate",
                 answers: [Answer(answer: "Hamilton", isCorrect: false),
                           Answer(answer: "Verstapen", isCorrect: false),
                           Answer(answer: "Shumacher", isCorrect: false),
                           Answer(answer: "Perez", isCorrect: true),]),
        Question(questionTitle: "How many races are in a F1 Season",
                 answers: [Answer(answer: "16", isCorrect: false),
                           Answer(answer: "20", isCorrect: false),
                           Answer(answer: "32", isCorrect: false),
                           Answer(answer: "24", isCorrect: true),]),
        Question(questionTitle: "Who does Toto Wolff work for",
                 answers: [Answer(answer: "Mercedes", isCorrect: true),
                           Answer(answer: "RedBull", isCorrect: false),
                           Answer(answer: "Mclaren", isCorrect: false),
                           Answer(answer: "Alpine", isCorrect: false),]),
        Question(questionTitle: "Who did alonso win his Titles with ",
                 answers: [Answer(answer: "Ferrari", isCorrect: false),
                           Answer(answer: "Renault", isCorrect: true),
                           Answer(answer: "Mercedes", isCorrect: false),
                           Answer(answer: "Williams", isCorrect: false),])
    ]
    
    var quiz: Quiz {
        return Quiz(questions: questions)
    }
}

