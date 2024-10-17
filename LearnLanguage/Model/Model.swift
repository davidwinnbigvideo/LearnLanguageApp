//
//  Model.swift
//  LearnLanguage
//
//  Created by David Winn on 10/17/24.
//

import Foundation

struct Model {
    var topics: [Topic]
    
    struct Topic {
        var title: String
        var lessonText: String
        var vocabulary: [String: String]
        var quiz: [QuizItem]
    }
    
    enum QuestionType {
        case trueFalse
        case multipleChoice
        case fillInTheBlank
    }
    
    struct QuizItem {
        var question: String
        var answer: [String]?
        var correctAnswer: String
        var questionType: QuestionType
    }
}

// bad example
let model = Model(topics: [
    Model.Topic(
        title: "Test",
        lessonText: """
            The lesson text goes here
            """,
        vocabulary: ["Hola": "Hello"],
        quiz: []
    )
])
