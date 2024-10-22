//
//  ViewModel.swift
//  LearnLanguage
//
//  Created by David Winn on 10/21/24.
//

import Foundation
@Observable class ViewModel: ObservableObject {
    
    //MARK: - Constants
    
    var topics: [Model.Topic]
    var currentTopicIndex: Int = 0
    var currentQuizItemIndex: Int = 0
    var userAnswer: String = ""
    var quizCompleted: Bool = false
    var quizFinished: Bool = false
    var score: Int = 0
    
    //MARK: - Properties
    
    //MARK: - Model Access
    
    struct TopicViewData: Identifiable {
        let id: Int
        let title: String
        let lessonText: String
        let vocabulary: [(word: String, translation: String)]
    }
    
    private func convertToTopicViewData() -> [TopicViewData] {
        return topics.enumerated().map { index, topic in
            TopicViewData(
                id: index,
                title: topic.title,
                lessonText: topic.lessonText,
                vocabulary: Array(topic.vocabulary).map { ($0.key, $0.value) }
            )
        }
    }
    
    var topicsViewData: [TopicViewData] {
        convertToTopicViewData()
    }
    
    func getTopicViewData(at index: Int) -> TopicViewData {
        topicsViewData[index]
    }
    init(model: Model) {
        self.topics = model.topics
    }
    var currentTopic: Model.Topic {
        print("Accessing currentTopic")
        return topics[currentTopicIndex]
    }
    var currentQuizItem: Model.QuizItem {
        currentTopic.quiz[currentQuizItemIndex]
    }
    func nextTopic() {
        if currentTopicIndex < topics.count - 1 {
            currentTopicIndex += 1
            currentQuizItemIndex = 0
            quizCompleted = false
            score = 0
        }
    }
    func nextQuizItem() {
        if currentQuizItemIndex < currentTopic.quiz.count - 1 {
            currentQuizItemIndex += 1
        } else {
            quizFinished = true
        }
    }
    func checkAnswer() -> Bool {
        let isCorrect = userAnswer.lowercased() == currentQuizItem.correctAnswer.lowercased()
        if isCorrect {
            score += 1
        }
        return isCorrect
    }
    func resetQuiz() {
        currentQuizItemIndex = 0
        quizCompleted = false
        score = 0
        userAnswer = ""
    }
    func getVocabularyList() -> [(String, String)] {
            print("getVocabularyList called")
            let result = Array(currentTopic.vocabulary)
            print("Vocabulary count: \(result.count)")
            return result
        }
}
