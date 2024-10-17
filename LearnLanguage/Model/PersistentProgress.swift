//
//  PersistentProgress.swift
//  LearnLanguage
//
//  Created by David Winn on 10/17/24.
//

import Foundation

typealias ItemProgress = [String: Bool]
typealias TopicProgress = [String: ItemProgress]

//let myProgress: TopicProgress = [
//    "Numbers (1 to 10)": [ "read": true, "studied": true, "passed": true ],
//    "Months of the Year": ["read": true, "studied": true, "passed": true]
//] This is what the default dictionary looks like

struct PersistentProgress {
    private static func defaultProgress() -> TopicProgress {
        var defaultProgress: TopicProgress = [:]
        
        for topic in model.topics {
            defaultProgress[topic.title] = [
                "read": false,
                "studied": false,
                "passed": false]
        }
        
        return defaultProgress
    }
    
    private static func readProgress() -> TopicProgress {
        UserDefaults.standard.dictionary(forKey: Key.progress) as? TopicProgress ?? TopicProgress()
    }
    
    var progress = PersistentProgress.readProgress() {
        didSet {
            UserDefaults.standard.set(progress, forKey: Key.progress)
        }
    }
    
    private struct Key {
        static let progress = "Progress"
        static let highScores = "HighScores"
    }
}
