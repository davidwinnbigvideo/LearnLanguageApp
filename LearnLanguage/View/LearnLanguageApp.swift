//
//  LearnLanguageApp.swift
//  LearnLanguage
//
//  Created by David Winn on 10/10/24.
//

import SwiftUI

@main
struct LearnLanguageApp: App {
    var body: some Scene {
        WindowGroup {
            LearnLanguageView(model: Model.sampleData())
        }
    }
}
