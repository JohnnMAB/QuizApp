//
//  QuestionManager.swift
//  QuizApp
//
//  Created by Jhonathan Mattos on 17/02/24.
//

import Foundation

//MARK: - Manager
class QuestionsManager: ObservableObject {
    var mockQuestions = [
        Question(id: 0, title: "Question 1", options: ["A", "B", "C", "D"], correct: true),
        Question(id: 1, title: "Question 2", options: ["A", "B", "C", "D"], correct: true),
        Question(id: 2, title: "Question 3", options: ["A", "B", "C", "D"], correct: true),
        Question(id: 3, title: "Question 4", options: ["A", "B", "C", "D"], correct: true),
        Question(id: 4, title: "Question 5", options: ["A", "B", "C", "D"], correct: true),
        Question(id: 5, title: "Question 6", options: ["A", "B", "C", "D"], correct: true),
        Question(id: 6, title: "Question 7", options: ["A", "B", "C", "D"], correct: true),
        Question(id: 7, title: "Question 8", options: ["A", "B", "C", "D"], correct: true),
        Question(id: 8, title: "Question 9", options: ["A", "B", "C", "D"], correct: true),
        Question(id: 9, title: "Question 10", options: ["A", "B", "C", "D"], correct: true),
    ]
}
