//
//  LearnLanguageApp.swift
//  LearnLanguage
//
//  Created by David Winn on 10/10/24.
//

import SwiftUI

@main
struct LearnLanguageApp: App {
    @StateObject private var viewModel = ViewModel(model: Model.sampleData())
    var body: some Scene {
        WindowGroup {
            LearnLanguageView().environmentObject(viewModel)
        }
    }
}
