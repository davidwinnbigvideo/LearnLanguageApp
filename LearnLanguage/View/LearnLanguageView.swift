//
//  LearnLanguageView.swift
//  LearnLanguage
//
//  Created by David Winn on 10/10/24.
//

import SwiftUI

let topics = [
    "Basic Greetings and farewells",
    "Common Phrases",
    "Numbers",
    "Colors",
    "Family Members",
    "Food and Drink",
    "Common Adjectives",
    "Days of the week",
    "Weather Vocabulary",
    "Common Verbs"
]

struct LearnLanguageView: View {
    var body: some View {
        NavigationStack {
            List(topics, id: \.self) { topic in
                TopicCell(topic: topic)
            }
            .listStyle(.plain)
            .navigationTitle("Learn Language")
        }
    }
}

struct TopicCell: View {
    let topic: String
    
    var body: some View {
        NavigationLink {
            TopicLessonView(topic: topic)
        } label: {
            Text(topic)
        }
    }
}

struct TopicLessonView: View {
    let topic: String
    
    var body: some View {
        VStack {
            Text("Lesson about topic \(topic) goes here")
                NavigationLink {
                    QuizScreen()
                } label: {
                    Text("Take the Quiz")
                }
        }
        .navigationTitle("\(topic)")
    }
}

struct QuizScreen: View {
    var body: some View {
        VStack(spacing: 0) {
                QuizQuestionCard()
                    .frame(height: UIScreen.main.bounds.height * 0.6)
            Form {
                    Section {
                        Text("a. Answer 1")
                        Text("b. Answer 2")
                        Text("c. Answer 3")
                    }
                .listStyle(PlainListStyle())
            }
        }
        Text("Quiz Screen")
    }
}

struct QuizQuestionCard: View {
    var body: some View {
        TabView {
            ForEach(0..<5) { index in
                VStack {
                    Text("Page \(index + 1)")
                        .font(.largeTitle)
                        .padding()
                    Image(systemName: "\(index + 1).circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                        .padding()
                }
                .background(Color(.systemBackground))
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .shadow(radius: 5)
                .padding()
                
            }
        }
        .tabViewStyle(.page)
        .indexViewStyle(.page(backgroundDisplayMode: .always))
    }
}

#Preview {
    LearnLanguageView()
}
