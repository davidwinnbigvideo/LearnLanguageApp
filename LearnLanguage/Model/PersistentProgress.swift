//
//  PersistentProgress.swift
//  LearnLanguage
//
//  Created by David Winn on 10/17/24.
//

import Foundation

typealias ItemProgress = [String: Bool]
typealias TopicProgress = [String: ItemProgress]

struct PersistentProgress {
    private let model: Model
    
    private static func defaultProgress(for model: Model) -> TopicProgress {
        var defaultProgress: TopicProgress = [:]
        
        for topic in model.topics {
            defaultProgress[topic.title] = [
                "read": false,
                "studied": false,
                "passed": false]
        }
        
        return defaultProgress
    }
    
    private static func readProgress(for model: Model) -> TopicProgress {
        UserDefaults.standard.dictionary(forKey: Key.progress) as? TopicProgress ?? defaultProgress(for: model)
    }
    
    var progress: TopicProgress {
        get {
            PersistentProgress.readProgress(for: model)
        }
        set {
            UserDefaults.standard.set(newValue, forKey: Key.progress)
        }
    }
    
    init(model: Model) {
        self.model = model
    }
    
    private struct Key {
        static let progress = "Progress"
        static let highScores = "HighScores"
    }
}
