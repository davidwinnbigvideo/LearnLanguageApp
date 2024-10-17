//
//  LearnLanguageView.swift
//  LearnLanguage
//
//  Created by David Winn on 10/10/24.
//

import SwiftUI

struct Flashcard {
    let front: String
    let back: String
}

func getFlashcardsForTopic(_ topic: String) -> [Flashcard] {
    switch topic {
    case "Numbers":
        return [
            Flashcard(front: "uno", back: "one"),
            Flashcard(front: "dos", back: "two"),
            Flashcard(front: "tres", back: "three"),
            Flashcard(front: "cuatro", back: "four"),
            Flashcard(front: "cinco", back: "five"),
            Flashcard(front: "seis", back: "six"),
            Flashcard(front: "siete", back: "seven"),
            Flashcard(front: "ocho", back: "eight"),
            Flashcard(front: "nueve", back: "nine"),
            Flashcard(front: "diez", back: "ten")
        ]
    case "Colors":
        return [
            Flashcard(front: "rojo", back: "red"),
            Flashcard(front: "azul", back: "blue"),
            Flashcard(front: "verde", back: "green"),
            Flashcard(front: "amarillo", back: "yellow"),
            Flashcard(front: "negro", back: "black")
        ]
    // Add more cases for other topics
    default:
        return []
    }
}

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
                    QuizScreen(topic: topic)
                } label: {
                    Text("Take the Quiz")
                }
        }
        .navigationTitle("\(topic)")
    }
}

struct QuizScreen: View {
    let topic: String
    
    var body: some View {
        VStack(spacing: 0) {
            QuizQuestionCard(topic: topic)
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
    let topic: String
    let flashcards: [Flashcard]
    @State private var flippedIndices: Set<Int> = []

    init(topic: String) {
        self.topic = topic
        self.flashcards = getFlashcardsForTopic(topic)
    }

    var body: some View {
        TabView {
            ForEach(flashcards.indices, id: \.self) { index in
                ZStack {
                    Text(flashcards[index].front) // Spanish word
                        .opacity(flippedIndices.contains(index) ? 0 : 1) // Hidden if flipped
                        .font(.largeTitle)
                        .padding()

                    Text(flashcards[index].back) // English word
                        .opacity(flippedIndices.contains(index) ? 1 : 0) // Hidden if not flipped
                        .font(.largeTitle)
                        .padding()
                }
                .frame(width: 300, height: 200)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .shadow(radius: 5)
                .padding()
                .cardify(isFaceUp: !flippedIndices.contains(index))
                .onTapGesture {
                    withAnimation(.easeInOut(duration: 0.5)) {
                        if flippedIndices.contains(index) {
                            flippedIndices.remove(index) // Flip back to Spanish
                        } else {
                            flippedIndices.insert(index) // Flip to English
                        }
                    }
                }
            }
        }
        .tabViewStyle(.page)
        .indexViewStyle(.page(backgroundDisplayMode: .always))
    }
}

#Preview {
    LearnLanguageView()
}
