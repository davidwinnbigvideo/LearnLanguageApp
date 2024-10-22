//
//  LearnLanguageView.swift
//  LearnLanguage
//
//  Created by David Winn on 10/10/24.
//

import SwiftUI

struct LearnLanguageView: View {

    @EnvironmentObject var viewModel: ViewModel

    var body: some View {
        NavigationStack {
            List(viewModel.topicsViewData) { topicData in
                TopicCell(topicData: topicData)
            }
            .listStyle(.plain)
            .navigationTitle("Learn Language")
        }
        .environmentObject(viewModel)
        .onAppear {
            print("LearnLanguageView appeared")
        }
    }
}

struct TopicCell: View {
    let topicData: ViewModel.TopicViewData

    var body: some View {
        NavigationLink {
            TopicLessonView(topicId: topicData.id)
        } label: {
            Text(topicData.title)
        }
    }
}

struct TopicLessonView: View {
    @EnvironmentObject var viewModel: ViewModel
    let topicId: Int
    
    private struct Url {
        static let google = "https://google.com/".url
    }
    
    private var topicData: ViewModel.TopicViewData {
        viewModel.getTopicViewData(at: topicId)
    }

    var body: some View {
        VStack(spacing: 20) {
            WebView(
                data: topicData.lessonText,
                request: URLRequest(url: Url.google)
            )
            
            NavigationLink {
                FlashcardView()
            } label: {
                Text("Practice Vocabulary")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }

            NavigationLink {
                QuizScreen()
            } label: {
                Text("Take the Quiz")
                    .padding()
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
        .navigationTitle(topicData.title)
        .onAppear {
            viewModel.currentTopicIndex = topicId
            print("TopicLessonView appeared")
        }
    }
}

struct QuizScreen: View {
    @EnvironmentObject var viewModel: ViewModel
    @State private var selectedAnswer: String?
    @State private var showFeedback: Bool = false
    @State private var isCorrect: Bool = false

    var body: some View {
        if viewModel.quizFinished {
            VStack(spacing: 20) {
                Text("Quiz Completed!")
                    .font(.title)
                    .fontWeight(.bold)
                Text("Your score: \(viewModel.score)/\(viewModel.currentTopic.quiz.count)")
                    .font(.headline)
                Button("Restart Quiz") {
                    viewModel.resetQuiz()
                }
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
            }
        } else {
            VStack(spacing: 20) {
                QuizQuestionCard()
                    .frame(height: UIScreen.main.bounds.height * 0.4)
                
                if let answers = viewModel.currentQuizItem.answer {
                    ForEach(answers, id: \.self) { answer in
                        Button(action: {
                            selectedAnswer = answer
                        }) {
                            Text(answer)
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(selectedAnswer == answer ? Color.blue : Color.gray.opacity(0.2))
                                .foregroundColor(selectedAnswer == answer ? .white : .black)
                                .cornerRadius(10)
                        }
                    }
                }
                
                Button("Submit Answer") {
                    if let selected = selectedAnswer {
                        viewModel.userAnswer = selected
                        isCorrect = viewModel.checkAnswer()
                        showFeedback = true
                    }
                }
                .disabled(selectedAnswer == nil)
                .padding()
                .background(selectedAnswer != nil ? Color.green : Color.gray)
                .foregroundColor(.white)
                .cornerRadius(10)
                
                if showFeedback {
                    Text(isCorrect ? "Correct!" : "Incorrect. The correct answer is \(viewModel.currentQuizItem.correctAnswer)")
                        .foregroundColor(isCorrect ? .green : .red)
                        .padding()
                    
                    Button("Next Question") {
                        viewModel.nextQuizItem()
                        selectedAnswer = nil
                        showFeedback = false
                    }
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                }
            }
            .padding()
            .navigationTitle("Quiz")
        }
    }
}

struct QuizQuestionCard: View {
    @EnvironmentObject var viewModel: ViewModel

    var body: some View {
        VStack {
            Text(viewModel.currentQuizItem.question)
                .font(.title2)
                .padding()
                .multilineTextAlignment(.center)
            
            if viewModel.currentQuizItem.questionType == .fillInTheBlank {
                TextField("Your answer", text: $viewModel.userAnswer)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.gray.opacity(0.1))
        .cornerRadius(10)
        .padding()
    }
}

struct FlashcardView: View {
    @EnvironmentObject var viewModel: ViewModel
    @State private var isFaceUp = true
    
    var body: some View {
        TabView {
            let vocabulary = viewModel.getVocabularyList().shuffled()
            ForEach(0..<vocabulary.count, id: \.self) { currentIndex in
                ZStack {
                    Text(vocabulary[currentIndex].0) // Spanish word
                        .opacity(isFaceUp ? 1 : 0)
                    Text(vocabulary[currentIndex].1) // English word
                        .opacity(isFaceUp ? 0 : 1)
                }
                .frame(width: 300, height: 200)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .shadow(radius: 5)
                .padding()
                .cardify(isFaceUp: isFaceUp)
                .onTapGesture {
                    withAnimation {
                        isFaceUp.toggle()
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
