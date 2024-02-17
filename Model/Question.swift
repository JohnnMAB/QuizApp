//
//  Question.swift
//  QuizApp
//
//  Created by Jhonathan Mattos on 17/02/24.
//

import Foundation

//MARK: - Question
struct Question {
    let id: Int
    let title: String
    let options: [String]
    let correct: Bool
    var selected: String?
}



