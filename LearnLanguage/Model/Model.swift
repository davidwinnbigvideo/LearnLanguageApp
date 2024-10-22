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

extension Model {
    static func sampleData() -> Model {
        return Model(topics: [
            Topic(
                title: "Basic Greetings and Farewells",
                lessonText: """
                            <!DOCTYPE html>
                            <html lang="en">
                            <head>
                                <meta charset="UTF-8">
                                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                                <style>
                                    body {
                                        font-family: Arial, sans-serif;
                                        line-height: 1.6;
                                        background-color: #f9f9f9;
                                        color: #333;
                                    }
                                    h2 {
                                        color: #1e90ff;
                                    }
                                    p {
                                        margin: 1em 0;
                                    }
                                    .highlight {
                                        background-color: #ffeb3b;
                                    }
                                </style>
                            </head>
                            <body>
                                <h2>Basic Greetings and Farewells</h2>
                                <p>In this lesson, we will explore how to greet and say goodbye in Spanish, covering common phrases used in everyday conversations. Whether you're meeting someone for the first time or bidding farewell to a friend, knowing these expressions will help you start and end your conversations with ease.</p>
                                
                                <p>Let's begin with <strong>greetings</strong>. A typical way to say "Hello" in Spanish is <span class="highlight">"Hola"</span>. This simple yet powerful word can be used in any casual or formal setting. For example, when meeting someone in the morning, you can use <span class="highlight">"Buenos días"</span>, which means "Good morning". Similarly, for the afternoon, you can say <span class="highlight">"Buenas tardes"</span>, and for the evening, <span class="highlight">"Buenas noches"</span>.</p>
                                
                                <p>Now, when it’s time to say goodbye, you might use <span class="highlight">"Adiós"</span> to express "Goodbye". If you want to sound a little less final, a common alternative is <span class="highlight">"Hasta luego"</span>, which translates to "See you later". These phrases are often paired with polite gestures, such as a handshake or a wave.</p>
                                
                                <p>Additionally, an important part of any conversation is asking how someone is doing. In Spanish, you can ask <span class="highlight">"¿Cómo estás?"</span>, meaning "How are you?". A typical response might be <span class="highlight">"Estoy bien"</span>, which means "I am fine". These exchanges are perfect for breaking the ice and showing that you care about the other person’s well-being.</p>
                                
                                <p>Practice these phrases often to feel more comfortable using them in real-world situations. Whether you’re traveling, making new friends, or studying Spanish, these greetings and farewells will help you communicate effectively and confidently.</p>
                            </body>
                            </html>
                            """,
                vocabulary: [
                    "Hola": "Hello",
                    "Adiós": "Goodbye",
                    "Buenos días": "Good morning",
                    "Buenas tardes": "Good afternoon",
                    "Buenas noches": "Good night",
                    "¿Cómo estás?": "How are you?",
                    "Estoy bien": "I am fine",
                    "Hasta luego": "See you later"
                ],
                quiz: [
                    QuizItem(
                        question: "How do you say 'Hello' in Spanish?",
                        answer: ["Hola", "Buenos días", "Buenas tardes", "Buenas noches"],
                        correctAnswer: "Hola",
                        questionType: .multipleChoice
                    ),
                    QuizItem(
                        question: "True or False: 'Buenas noches' means 'Good evening'.",
                        answer: nil,
                        correctAnswer: "True",
                        questionType: .trueFalse
                    ),
                    QuizItem(
                        question: "Fill in the blank: '___ días' means 'Good morning'.",
                        answer: ["Buenos", "Cómo", "Estoy"],
                        correctAnswer: "Buenos",
                        questionType: .fillInTheBlank
                    )
                ]
            ),
            Topic(
                title: "Common Phrases",
                lessonText: """
                            <!DOCTYPE html>
                            <html lang="en">
                            <head>
                                <meta charset="UTF-8">
                                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                                <style>
                                    body {
                                        font-family: Arial, sans-serif;
                                        line-height: 1.6;
                                        background-color: #f4f4f9;
                                        color: #2c3e50;
                                    }
                                    h2 {
                                        color: #2980b9;
                                    }
                                    p {
                                        margin-bottom: 1.2em;
                                    }
                                    .highlight {
                                        background-color: #e74c3c;
                                        color: white;
                                        padding: 0.2em 0.4em;
                                    }
                                </style>
                            </head>
                            <body>
                                <h2>Common Phrases</h2>
                                <p>In this lesson, we'll cover some essential Spanish phrases that you can use in a variety of everyday situations. These expressions will help you navigate common interactions with ease, whether you're asking for help, introducing yourself, or making polite requests.</p>
                                
                                <p>When you need assistance, the phrase <span class="highlight">"¿Me puedes ayudar?"</span> (Can you help me?) will be your go-to. This is a polite way to ask someone for help, and it can be used in many contexts, from finding directions to asking for recommendations.</p>
                                
                                <p>If you're introducing yourself, use <span class="highlight">"Me llamo..."</span>, which means "My name is...". For example, you could say <span class="highlight">"Me llamo David"</span> to introduce yourself as David. After that, you can ask the other person's name with <span class="highlight">"¿Cómo te llamas?"</span> (What's your name?). This creates a smooth exchange during introductions.</p>
                                
                                <p>Politeness is important in any language, and in Spanish, using <span class="highlight">"por favor"</span> (please) and <span class="highlight">"gracias"</span> (thank you) goes a long way. For instance, if you're ordering something or making a request, it's always good to add <span class="highlight">"por favor"</span> to the end of your sentence.</p>
                                
                                <p>Lastly, when you don’t understand something, you can say <span class="highlight">"No entiendo"</span> (I don’t understand) or <span class="highlight">"¿Puedes repetir?"</span> (Can you repeat?). These phrases will help keep the conversation going when you need clarification.</p>

                                <p>Practice these phrases to become more confident in your Spanish conversations. Whether you're traveling or learning for personal growth, these common phrases will help you express yourself in a variety of situations.</p>
                            </body>
                            </html>

                            """,
                vocabulary: [
                    "Por favor": "Please",
                    "Gracias": "Thank you",
                    "De nada": "You're welcome",
                    "Lo siento": "I'm sorry",
                    "¿Cómo estás?": "How are you?",
                    "¿Cuánto cuesta?": "How much does it cost?",
                    "¿Dónde está...?": "Where is...?",
                    "Me gustaría": "I would like"
                ],
                quiz: [
                    QuizItem(
                        question: "How do you say 'I'm sorry' in Spanish?",
                        answer: ["Lo siento", "De nada", "Por favor", "Gracias"],
                        correctAnswer: "Lo siento",
                        questionType: .multipleChoice
                    ),
                    QuizItem(
                        question: "True or False: '¿Dónde está...?' means 'How are you?'.",
                        answer: nil,
                        correctAnswer: "False",
                        questionType: .trueFalse
                    ),
                    QuizItem(
                        question: "Fill in the blank: 'Me ___' means 'I would like'.",
                        answer: ["gustaría", "nada", "siento"],
                        correctAnswer: "gustaría",
                        questionType: .fillInTheBlank
                    )
                ]
            ),
            Topic(
                title: "Numbers (1-10)",
                lessonText: """
                            <!DOCTYPE html>
                            <html lang="en">
                            <head>
                                <meta charset="UTF-8">
                                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                                <style>
                                    body {
                                        font-family: Arial, sans-serif;
                                        line-height: 1.6;
                                        background-color: #f1f1f1;
                                        color: #34495e;
                                    }
                                    h2 {
                                        color: #16a085;
                                    }
                                    p {
                                        margin-bottom: 1.2em;
                                    }
                                    .highlight {
                                        background-color: #f39c12;
                                        color: white;
                                        padding: 0.2em 0.4em;
                                    }
                                    .vocab-list {
                                        margin: 1em 0;
                                        padding: 0;
                                        list-style: none;
                                    }
                                    .vocab-list li {
                                        background-color: #ecf0f1;
                                        padding: 0.5em;
                                        margin: 0.3em 0;
                                        border-left: 4px solid #2980b9;
                                    }
                                </style>
                            </head>
                            <body>
                                <h2>Numbers (1-10)</h2>
                                <p>In this lesson, we will learn how to count from one to ten in Spanish. Numbers are fundamental in any language, and learning them will allow you to handle simple everyday tasks such as counting, telling time, or shopping. Let’s start with the basics!</p>
                                
                                <h3>Numbers in Spanish</h3>
                                <ul class="vocab-list">
                                    <li><span class="highlight">Uno</span> – One</li>
                                    <li><span class="highlight">Dos</span> – Two</li>
                                    <li><span class="highlight">Tres</span> – Three</li>
                                    <li><span class="highlight">Cuatro</span> – Four</li>
                                    <li><span class="highlight">Cinco</span> – Five</li>
                                    <li><span class="highlight">Seis</span> – Six</li>
                                    <li><span class="highlight">Siete</span> – Seven</li>
                                    <li><span class="highlight">Ocho</span> – Eight</li>
                                    <li><span class="highlight">Nueve</span> – Nine</li>
                                    <li><span class="highlight">Diez</span> – Ten</li>
                                </ul>
                                
                                <p>As you can see, Spanish numbers from one to ten are quite straightforward. Practice repeating them out loud until you feel comfortable. Learning these numbers will be useful in everyday situations, whether you're shopping, asking for quantities, or giving someone your phone number.</p>
                                
                                <h3>Examples in Use</h3>
                                <p>Here are a few examples of how to use these numbers in simple sentences:</p>
                                <ul class="vocab-list">
                                    <li><span class="highlight">Tengo tres libros.</span> (I have three books.)</li>
                                    <li><span class="highlight">Hay cinco manzanas en la mesa.</span> (There are five apples on the table.)</li>
                                    <li><span class="highlight">Ocho personas están aquí.</span> (Eight people are here.)</li>
                                </ul>
                                
                                <p>Try to use these numbers as often as you can in your daily conversations or practice exercises. The more you practice, the easier it will be to recall them quickly when you need them!</p>
                            </body>
                            </html>

                            """,
                vocabulary: [
                    "Uno": "One",
                    "Dos": "Two",
                    "Tres": "Three",
                    "Cuatro": "Four",
                    "Cinco": "Five",
                    "Seis": "Six",
                    "Siete": "Seven",
                    "Ocho": "Eight",
                    "Nueve": "Nine",
                    "Diez": "Ten"
                ],
                quiz: [
                    QuizItem(
                        question: "How do you say 'Eight' in Spanish?",
                        answer: ["Ocho", "Seis", "Nueve", "Diez"],
                        correctAnswer: "Ocho",
                        questionType: .multipleChoice
                    ),
                    QuizItem(
                        question: "True or False: 'Cinco' means 'Five'.",
                        answer: nil,
                        correctAnswer: "True",
                        questionType: .trueFalse
                    ),
                    QuizItem(
                        question: "Fill in the blank: '___' means 'Three'.",
                        answer: ["Tres", "Siete", "Uno"],
                        correctAnswer: "Tres",
                        questionType: .fillInTheBlank
                    )
                ]
            ),
            Topic(
                title: "Colors",
                lessonText: """
                            <!DOCTYPE html>
                            <html lang="en">
                            <head>
                                <meta charset="UTF-8">
                                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                                <style>
                                    body {
                                        font-family: Arial, sans-serif;
                                        background-color: #f8f9fa;
                                        color: #2c3e50;
                                    }
                                    h2 {
                                        color: #d35400;
                                    }
                                    p {
                                        margin-bottom: 1.2em;
                                    }
                                    .highlight {
                                        background-color: #3498db;
                                        color: white;
                                        padding: 0.2em 0.4em;
                                    }
                                    .vocab-list {
                                        margin: 1em 0;
                                        padding: 0;
                                        list-style: none;
                                    }
                                    .vocab-list li {
                                        background-color: #ecf0f1;
                                        padding: 0.5em;
                                        margin: 0.3em 0;
                                        border-left: 4px solid #27ae60;
                                    }
                                </style>
                            </head>
                            <body>
                                <h2>Colors in Spanish</h2>
                                <p>In this lesson, we’ll learn the names of common colors in Spanish. Colors are an important part of everyday life, whether you're describing objects, clothing, or just observing the world around you. Let’s dive into some of the most commonly used colors in Spanish!</p>
                                
                                <h3>Colors in Spanish</h3>
                                <ul class="vocab-list">
                                    <li><span class="highlight">Rojo</span> – Red</li>
                                    <li><span class="highlight">Azul</span> – Blue</li>
                                    <li><span class="highlight">Verde</span> – Green</li>
                                    <li><span class="highlight">Amarillo</span> – Yellow</li>
                                    <li><span class="highlight">Naranja</span> – Orange</li>
                                    <li><span class="highlight">Gris</span> – Gray</li>
                                    <li><span class="highlight">Blanco</span> – White</li>
                                    <li><span class="highlight">Rosa</span> – Pink</li>
                                    <li><span class="highlight">Negro</span> – Black</li>
                                </ul>
                                
                                <p>These are the basic colors you’ll encounter in daily conversations. You can use them to describe anything from the color of an object to someone’s clothing. As you practice, you’ll get more comfortable recognizing and using these words in different contexts.</p>
                                
                                <h3>Examples in Use</h3>
                                <p>Here are a few examples of how you can use these colors in sentences:</p>
                                <ul class="vocab-list">
                                    <li><span class="highlight">La manzana es roja.</span> (The apple is red.)</li>
                                    <li><span class="highlight">El cielo es azul.</span> (The sky is blue.)</li>
                                    <li><span class="highlight">La camisa es blanca.</span> (The shirt is white.)</li>
                                </ul>
                                
                                <p>Colors help make your descriptions more vibrant and precise. Practice using these words in everyday situations, and soon you’ll be able to describe the world around you in Spanish!</p>
                            </body>
                            </html>
                            """,
                vocabulary: [
                    "Rojo": "Red",
                    "Azul": "Blue",
                    "Verde": "Green",
                    "Amarillo": "Yellow",
                    "Naranja": "Orange",
                    "Gris": "Gray",
                    "Blanco": "White",
                    "Rosa": "Pink",
                    "Negro": "Black"
                ],
                quiz: [
                    QuizItem(
                        question: "How do you say 'Green' in Spanish?",
                        answer: ["Verde", "Azul", "Amarillo", "Rojo"],
                        correctAnswer: "Verde",
                        questionType: .multipleChoice
                    ),
                    QuizItem(
                        question: "True or False: 'Blanco' means 'Black'.",
                        answer: nil,
                        correctAnswer: "False",
                        questionType: .trueFalse
                    ),
                    QuizItem(
                        question: "Fill in the blank: '___' means 'Blue'.",
                        answer: ["Azul", "Gris", "Verde"],
                        correctAnswer: "Azul",
                        questionType: .fillInTheBlank
                    )
                ]
            ),
            Topic(
                title: "Family Members",
                lessonText: """
                            <!DOCTYPE html>
                            <html lang="en">
                            <head>
                                <meta charset="UTF-8">
                                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                                <style>
                                    body {
                                        font-family: Arial, sans-serif;
                                        line-height: 1.6;
                                        background-color: #f5f5f5;
                                        color: #2e4053;
                                    }
                                    h2 {
                                        color: #c0392b;
                                    }
                                    p {
                                        margin-bottom: 1.2em;
                                    }
                                    .highlight {
                                        background-color: #8e44ad;
                                        color: white;
                                        padding: 0.2em 0.4em;
                                    }
                                    .vocab-list {
                                        margin: 1em 0;
                                        padding: 0;
                                        list-style: none;
                                    }
                                    .vocab-list li {
                                        background-color: #ecf0f1;
                                        padding: 0.5em;
                                        margin: 0.3em 0;
                                        border-left: 4px solid #e74c3c;
                                    }
                                </style>
                            </head>
                            <body>
                                <h2>Family Members in Spanish</h2>
                                <p>In this lesson, we will learn how to refer to family members in Spanish. Understanding these terms will help you talk about your family and ask about others' families, an important part of social conversations in many cultures. Let’s explore some common family relationships in Spanish!</p>
                                
                                <h3>Common Family Relationships</h3>
                                <ul class="vocab-list">
                                    <li><span class="highlight">Madre</span> – Mother</li>
                                    <li><span class="highlight">Padre</span> – Father</li>
                                    <li><span class="highlight">Hermano</span> – Brother</li>
                                    <li><span class="highlight">Hermana</span> – Sister</li>
                                    <li><span class="highlight">Abuelo</span> – Grandfather</li>
                                    <li><span class="highlight">Abuela</span> – Grandmother</li>
                                    <li><span class="highlight">Tío</span> – Uncle</li>
                                    <li><span class="highlight">Tía</span> – Aunt</li>
                                </ul>
                                
                                <p>These words are useful when introducing family members, talking about family gatherings, or describing family relationships. Spanish family terms are fairly straightforward, and many are similar to their English equivalents.</p>
                                
                                <h3>Examples in Use</h3>
                                <p>Here are a few examples of how you can use these family terms in sentences:</p>
                                <ul class="vocab-list">
                                    <li><span class="highlight">Mi madre es profesora.</span> (My mother is a teacher.)</li>
                                    <li><span class="highlight">El hermano de Juan es médico.</span> (Juan’s brother is a doctor.)</li>
                                    <li><span class="highlight">Mi abuelo tiene 70 años.</span> (My grandfather is 70 years old.)</li>
                                </ul>
                                
                                <p>Learning these basic family terms will help you form deeper connections in conversations when discussing family and relationships. Practice using them with your own family members!</p>
                            </body>
                            </html>

                            """,
                vocabulary: [
                    "Madre": "Mother",
                    "Padre": "Father",
                    "Hermano": "Brother",
                    "Hermana": "Sister",
                    "Abuelo": "Grandfather",
                    "Abuela": "Grandmother",
                    "Tío": "Uncle",
                    "Tía": "Aunt"
                ],
                quiz: [
                    QuizItem(
                        question: "What is the Spanish word for 'Grandfather'?",
                        answer: ["Abuelo", "Padre", "Hermano", "Tío"],
                        correctAnswer: "Abuelo",
                        questionType: .multipleChoice
                    ),
                    QuizItem(
                        question: "True or False: 'Hermana' means 'Brother'.",
                        answer: nil,
                        correctAnswer: "False",
                        questionType: .trueFalse
                    ),
                    QuizItem(
                        question: "Fill in the blank: '___' means 'Aunt'.",
                        answer: ["Tía", "Hermana", "Madre"],
                        correctAnswer: "Tía",
                        questionType: .fillInTheBlank
                    )
                ]
            ),
            Topic(
                title: "Food and Drink",
                lessonText: """
                            <!DOCTYPE html>
                            <html lang="en">
                            <head>
                                <meta charset="UTF-8">
                                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                                <style>
                                    body {
                                        font-family: Arial, sans-serif;
                                        line-height: 1.6;
                                        background-color: #f0f8ff;
                                        color: #34495e;
                                    }
                                    h2 {
                                        color: #e67e22;
                                    }
                                    p {
                                        margin-bottom: 1.2em;
                                    }
                                    .highlight {
                                        background-color: #3498db;
                                        color: white;
                                        padding: 0.2em 0.4em;
                                    }
                                    .vocab-list {
                                        margin: 1em 0;
                                        padding: 0;
                                        list-style: none;
                                    }
                                    .vocab-list li {
                                        background-color: #ecf0f1;
                                        padding: 0.5em;
                                        margin: 0.3em 0;
                                        border-left: 4px solid #16a085;
                                    }
                                </style>
                            </head>
                            <body>
                                <h2>Food and Drink in Spanish</h2>
                                <p>In this lesson, we’ll explore common words for food and drink in Spanish. Learning these words will help you navigate restaurants, cafes, and markets while traveling or interacting in Spanish-speaking environments. Let's get started!</p>
                                
                                <h3>Food and Drink Vocabulary</h3>
                                <ul class="vocab-list">
                                    <li><span class="highlight">Agua</span> – Water</li>
                                    <li><span class="highlight">Comida</span> – Food</li>
                                    <li><span class="highlight">Pan</span> – Bread</li>
                                    <li><span class="highlight">Fruta</span> – Fruit</li>
                                    <li><span class="highlight">Carne</span> – Meat</li>
                                    <li><span class="highlight">Verdura</span> – Vegetable</li>
                                    <li><span class="highlight">Café</span> – Coffee</li>
                                    <li><span class="highlight">Té</span> – Tea</li>
                                </ul>
                                
                                <p>These are some of the basic food and drink words that you’ll encounter frequently. Whether you're ordering in a restaurant or buying groceries, knowing these words will make it easier to communicate your preferences.</p>
                                
                                <h3>Examples in Use</h3>
                                <p>Let’s take a look at how we can use these words in everyday situations:</p>
                                <ul class="vocab-list">
                                    <li><span class="highlight">Me gustaría un café, por favor.</span> (I would like a coffee, please.)</li>
                                    <li><span class="highlight">Quiero un poco de agua.</span> (I want some water.)</li>
                                    <li><span class="highlight">La verdura es muy saludable.</span> (Vegetables are very healthy.)</li>
                                </ul>
                                
                                <p>Try practicing these words and sentences the next time you talk about food or visit a restaurant. Mastering this vocabulary will make dining out or shopping in Spanish-speaking countries much easier and more enjoyable!</p>
                            </body>
                            </html>
                            """,
                vocabulary: [
                    "Agua": "Water",
                    "Comida": "Food",
                    "Pan": "Bread",
                    "Fruta": "Fruit",
                    "Carne": "Meat",
                    "Verdura": "Vegetable",
                    "Café": "Coffee",
                    "Té": "Tea"
                ],
                quiz: [
                    QuizItem(
                        question: "How do you say 'Water' in Spanish?",
                        answer: ["Agua", "Té", "Café", "Comida"],
                        correctAnswer: "Agua",
                        questionType: .multipleChoice
                    ),
                    QuizItem(
                        question: "True or False: 'Carne' means 'Meat'.",
                        answer: nil,
                        correctAnswer: "True",
                        questionType: .trueFalse
                    ),
                    QuizItem(
                        question: "Fill in the blank: '___' means 'Bread'.",
                        answer: ["Pan", "Verdura", "Comida"],
                        correctAnswer: "Pan",
                        questionType: .fillInTheBlank
                    )
                ]
            ),
            Topic(
                title: "Common Adjectives",
                lessonText: """
                            <!DOCTYPE html>
                            <html lang="en">
                            <head>
                                <meta charset="UTF-8">
                                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                                <style>
                                    body {
                                        font-family: Arial, sans-serif;
                                        line-height: 1.6;
                                        background-color: #fdfd96;
                                        color: #2c3e50;
                                    }
                                    h2 {
                                        color: #e74c3c;
                                    }
                                    p {
                                        margin-bottom: 1.2em;
                                    }
                                    .highlight {
                                        background-color: #27ae60;
                                        color: white;
                                        padding: 0.2em 0.4em;
                                    }
                                    .vocab-list {
                                        margin: 1em 0;
                                        padding: 0;
                                        list-style: none;
                                    }
                                    .vocab-list li {
                                        background-color: #ecf0f1;
                                        padding: 0.5em;
                                        margin: 0.3em 0;
                                        border-left: 4px solid #8e44ad;
                                    }
                                </style>
                            </head>
                            <body>
                                <h2>Common Adjectives in Spanish</h2>
                                <p>In this lesson, we will explore some common adjectives in Spanish. Adjectives are important for describing people, objects, and situations. Learning them will help you make your conversations more expressive and detailed. Let's dive into the world of Spanish adjectives!</p>
                                
                                <h3>Common Adjectives Vocabulary</h3>
                                <ul class="vocab-list">
                                    <li><span class="highlight">Grande</span> – Big</li>
                                    <li><span class="highlight">Pequeño</span> – Small</li>
                                    <li><span class="highlight">Bueno</span> – Good</li>
                                    <li><span class="highlight">Malo</span> – Bad</li>
                                    <li><span class="highlight">Bien</span> – Well</li>
                                    <li><span class="highlight">Muy bien</span> – Very well</li>
                                    <li><span class="highlight">Muy mal</span> – Very bad</li>
                                    <li><span class="highlight">Muy bueno</span> – Very good</li>
                                    <li><span class="highlight">Muy malo</span> – Very bad</li>
                                    <li><span class="highlight">Bonito</span> – Beautiful</li>
                                    <li><span class="highlight">Feo</span> – Ugly</li>
                                    <li><span class="highlight">Feliz</span> – Happy</li>
                                </ul>
                                
                                <p>These adjectives are commonly used in everyday conversations to describe various situations. Whether you are describing the size of something or expressing emotions, these words will help you communicate effectively.</p>
                                
                                <h3>Examples in Use</h3>
                                <p>Here are some examples of how you can use these adjectives:</p>
                                <ul class="vocab-list">
                                    <li><span class="highlight">El coche es grande.</span> (The car is big.)</li>
                                    <li><span class="highlight">Este libro es muy bueno.</span> (This book is very good.)</li>
                                    <li><span class="highlight">Ella está feliz hoy.</span> (She is happy today.)</li>
                                </ul>
                                
                                <p>Try practicing these adjectives by describing objects around you or your feelings. The more you use them, the easier they will be to remember and apply in conversation!</p>
                            </body>
                            </html>

                            """,
                vocabulary: [
                    "Grande": "Big",
                    "Pequeño": "Small",
                    "Bueno": "Good",
                    "Malo": "Bad",
                    "Bien": "Well",
                    "Muy bien": "Very well",
                    "Muy mal": "Very bad",
                    "Muy bueno": "Very good",
                    "Muy malo": "Very bad",
                    "Bonito": "Beautiful",
                    "Feo": "Ugly",
                    "Feliz": "Happy"
                ],
                quiz: [
                    QuizItem(
                        question: "What is the Spanish word for 'Beautiful'?",
                        answer: ["Bonito", "Feo", "Bueno", "Feliz"],
                        correctAnswer: "Bonito",
                        questionType: .multipleChoice
                    ),
                    QuizItem(
                        question: "True or False: 'Pequeño' means 'Big'.",
                        answer: nil,
                        correctAnswer: "False",
                        questionType: .trueFalse
                    ),
                    QuizItem(
                        question: "Fill in the blank: '___' means 'Happy'.",
                        answer: ["Feliz", "Muy mal", "Grande"],
                        correctAnswer: "Feliz",
                        questionType: .fillInTheBlank
                    )
                ]
            ),
            Topic(
                title: "Days of the Week",
                lessonText: """
                            <!DOCTYPE html>
                            <html lang="en">
                            <head>
                                <meta charset="UTF-8">
                                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                                <style>
                                    body {
                                        font-family: Arial, sans-serif;
                                        line-height: 1.6;
                                        background-color: #f0f8ff;
                                        color: #34495e;
                                    }
                                    h2 {
                                        color: #2980b9;
                                    }
                                    p {
                                        margin-bottom: 1.2em;
                                    }
                                    .highlight {
                                        background-color: #27ae60;
                                        color: white;
                                        padding: 0.2em 0.4em;
                                    }
                                    .vocab-list {
                                        margin: 1em 0;
                                        padding: 0;
                                        list-style: none;
                                    }
                                    .vocab-list li {
                                        background-color: #ecf0f1;
                                        padding: 0.5em;
                                        margin: 0.3em 0;
                                        border-left: 4px solid #3498db;
                                    }
                                </style>
                            </head>
                            <body>
                                <h2>Days of the Week in Spanish</h2>
                                <p>In this lesson, we will cover the days of the week in Spanish. Knowing these terms will help you when making plans, scheduling appointments, or talking about your week in Spanish-speaking environments. Let's learn the days of the week!</p>
                                
                                <h3>Days of the Week Vocabulary</h3>
                                <ul class="vocab-list">
                                    <li><span class="highlight">Lunes</span> – Monday</li>
                                    <li><span class="highlight">Martes</span> – Tuesday</li>
                                    <li><span class="highlight">Miércoles</span> – Wednesday</li>
                                    <li><span class="highlight">Jueves</span> – Thursday</li>
                                    <li><span class="highlight">Viernes</span> – Friday</li>
                                    <li><span class="highlight">Sábado</span> – Saturday</li>
                                    <li><span class="highlight">Domingo</span> – Sunday</li>
                                </ul>
                                
                                <p>These are the Spanish words for each day of the week. Try practicing them by saying the days out loud, or using them to talk about your schedule or weekly plans.</p>
                                
                                <h3>Examples in Use</h3>
                                <p>Here are some ways to use the days of the week in sentences:</p>
                                <ul class="vocab-list">
                                    <li><span class="highlight">Hoy es lunes.</span> (Today is Monday.)</li>
                                    <li><span class="highlight">El viernes voy al cine.</span> (On Friday, I’m going to the movies.)</li>
                                    <li><span class="highlight">Mañana es miércoles.</span> (Tomorrow is Wednesday.)</li>
                                </ul>
                                
                                <p>Practice using these sentences to talk about your weekly activities. Knowing the days of the week will make it easier to have conversations about plans and schedules in Spanish.</p>
                            </body>
                            </html>

                            """,
                vocabulary: [
                    "Lunes": "Monday",
                    "Martes": "Tuesday",
                    "Miércoles": "Wednesday",
                    "Jueves": "Thursday",
                    "Viernes": "Friday",
                    "Sábado": "Saturday",
                    "Domingo": "Sunday"
                ],
                quiz: [
                    QuizItem(
                        question: "What is the Spanish word for 'Friday'?",
                        answer: ["Viernes", "Lunes", "Jueves", "Sábado"],
                        correctAnswer: "Viernes",
                        questionType: .multipleChoice
                    ),
                    QuizItem(
                        question: "True or False: 'Domingo' means 'Saturday'.",
                        answer: nil,
                        correctAnswer: "False",
                        questionType: .trueFalse
                    ),
                    QuizItem(
                        question: "Fill in the blank: '___' means 'Wednesday'.",
                        answer: ["Miércoles", "Jueves", "Lunes"],
                        correctAnswer: "Miércoles",
                        questionType: .fillInTheBlank
                    )
                ]
            ),
            Topic(
                title: "Weather Vocabulary",
                lessonText: """
                            <!DOCTYPE html>
                            <html lang="en">
                            <head>
                                <meta charset="UTF-8">
                                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                                <style>
                                    body {
                                        font-family: Arial, sans-serif;
                                        line-height: 1.6;
                                        background-color: #e3f2fd;
                                        color: #2d3436;
                                    }
                                    h2 {
                                        color: #1e88e5;
                                    }
                                    p {
                                        margin-bottom: 1.2em;
                                    }
                                    .highlight {
                                        background-color: #f39c12;
                                        color: white;
                                        padding: 0.2em 0.4em;
                                    }
                                    .vocab-list {
                                        margin: 1em 0;
                                        padding: 0;
                                        list-style: none;
                                    }
                                    .vocab-list li {
                                        background-color: #ecf0f1;
                                        padding: 0.5em;
                                        margin: 0.3em 0;
                                        border-left: 4px solid #1e88e5;
                                    }
                                </style>
                            </head>
                            <body>
                                <h2>Weather Vocabulary in Spanish</h2>
                                <p>In this lesson, we will learn some useful phrases related to the weather in Spanish. These phrases will help you describe the weather conditions in everyday conversations.</p>
                                
                                <h3>Weather Vocabulary</h3>
                                <ul class="vocab-list">
                                    <li><span class="highlight">Hace sol</span> – It's sunny</li>
                                    <li><span class="highlight">Hace nublado</span> – It's cloudy</li>
                                    <li><span class="highlight">Hace llovizna</span> – It's raining</li>
                                    <li><span class="highlight">Hace nieve</span> – It's snowing</li>
                                    <li><span class="highlight">Hace frío</span> – It's cold</li>
                                    <li><span class="highlight">Hace calor</span> – It's hot</li>
                                </ul>
                                
                                <p>Being able to talk about the weather is essential in many everyday conversations. Practice these phrases and use them when discussing the weather.</p>
                                
                                <h3>Examples in Use</h3>
                                <p>Here are some examples of how to use these phrases:</p>
                                <ul class="vocab-list">
                                    <li><span class="highlight">Hoy hace sol.</span> (Today it’s sunny.)</li>
                                    <li><span class="highlight">Hace frío en el invierno.</span> (It's cold in the winter.)</li>
                                    <li><span class="highlight">Mañana hará calor.</span> (Tomorrow it will be hot.)</li>
                                </ul>
                                
                                <p>Use these phrases to describe the weather in your conversations. The more you practice, the more natural they will feel!</p>
                            </body>
                            </html>

                            """,
                vocabulary: [
                    "Hace sol": "It's sunny",
                    "Hace nublado": "It's cloudy",
                    "Hace llovizna": "It's raining",
                    "Hace nieve": "It's snowing",
                    "Hace frio": "It's cold",
                    "Hace calor": "It's hot"
                ],
                quiz: [
                    QuizItem(
                        question: "How do you say 'It's cold' in Spanish?",
                        answer: ["Hace frío", "Hace calor", "Hace sol", "Hace nublado"],
                        correctAnswer: "Hace frío",
                        questionType: .multipleChoice
                    ),
                    QuizItem(
                        question: "True or False: 'Hace sol' means 'It's cloudy'.",
                        answer: nil,
                        correctAnswer: "False",
                        questionType: .trueFalse
                    ),
                    QuizItem(
                        question: "Fill in the blank: '___' means 'It's raining'.",
                        answer: ["Hace llovizna", "Hace frio", "Hace sol"],
                        correctAnswer: "Hace llovizna",
                        questionType: .fillInTheBlank
                    )
                ]
            ),
            Topic(
                title: "Common Verbs",
                lessonText: """
                            <!DOCTYPE html>
                            <html lang="en">
                            <head>
                                <meta charset="UTF-8">
                                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                                <style>
                                    body {
                                        font-family: Arial, sans-serif;
                                        line-height: 1.6;
                                        background-color: #f1f1f1;
                                        color: #2c3e50;
                                    }
                                    h2 {
                                        color: #e74c3c;
                                    }
                                    p {
                                        margin-bottom: 1.2em;
                                    }
                                    .highlight {
                                        background-color: #3498db;
                                        color: white;
                                        padding: 0.2em 0.4em;
                                    }
                                    .vocab-list {
                                        margin: 1em 0;
                                        padding: 0;
                                        list-style: none;
                                    }
                                    .vocab-list li {
                                        background-color: #ecf0f1;
                                        padding: 0.5em;
                                        margin: 0.3em 0;
                                        border-left: 4px solid #e74c3c;
                                    }
                                </style>
                            </head>
                            <body>
                                <h2>Common Verbs in Spanish</h2>
                                <p>In this lesson, we’ll explore common Spanish verbs that you will use frequently in everyday conversations. These verbs are essential for expressing actions and will serve as building blocks for more complex sentences.</p>
                                
                                <h3>Verb Vocabulary</h3>
                                <ul class="vocab-list">
                                    <li><span class="highlight">Ser</span> – To be (permanent)</li>
                                    <li><span class="highlight">Estar</span> – To be (temporary)</li>
                                    <li><span class="highlight">Tener</span> – To have</li>
                                    <li><span class="highlight">Hacer</span> – To do</li>
                                    <li><span class="highlight">Ir</span> – To go</li>
                                    <li><span class="highlight">Llegar</span> – To arrive</li>
                                    <li><span class="highlight">Salir</span> – To leave</li>
                                    <li><span class="highlight">Entrar</span> – To enter</li>
                                    <li><span class="highlight">Comer</span> – To eat</li>
                                    <li><span class="highlight">Bañar</span> – To bathe</li>
                                    <li><span class="highlight">Dormir</span> – To sleep</li>
                                    <li><span class="highlight">Estudiar</span> – To study</li>
                                </ul>
                                
                                <p>These verbs will help you form simple and complex sentences. Practice using them in different contexts to gain fluency.</p>
                                
                                <h3>Examples in Use</h3>
                                <p>Here are some examples of how these verbs can be used:</p>
                                <ul class="vocab-list">
                                    <li><span class="highlight">Yo soy estudiante.</span> (I am a student.)</li>
                                    <li><span class="highlight">Nosotros vamos al parque.</span> (We are going to the park.)</li>
                                    <li><span class="highlight">Él tiene un libro.</span> (He has a book.)</li>
                                </ul>
                                
                                <p>Mastering these verbs will allow you to communicate a wide variety of ideas and actions in Spanish. Keep practicing to improve your fluency!</p>
                            </body>
                            </html>

                            """,
                vocabulary: [
                    "Ser": "To be",
                    "Estar": "To be",
                    "Tener": "To have",
                    "Hacer": "To do",
                    "Ir": "To go",
                    "Llegar": "To arrive",
                    "Salir": "To leave",
                    "Entrar": "To enter",
                    "Comer": "To eat",
                    "Bañar": "To bathe",
                    "Dormir": "To sleep",
                    "Estudiar": "To study"
                ],
                quiz: [
                    QuizItem(
                        question: "What is the Spanish word for 'To have'?",
                        answer: ["Tener", "Hacer", "Ir", "Ser"],
                        correctAnswer: "Tener",
                        questionType: .multipleChoice
                    ),
                    QuizItem(
                        question: "True or False: 'Dormir' means 'To eat'.",
                        answer: nil,
                        correctAnswer: "False",
                        questionType: .trueFalse
                    ),
                    QuizItem(
                        question: "Fill in the blank: '___' means 'To go'.",
                        answer: ["Ir", "Comer", "Tener"],
                        correctAnswer: "Ir",
                        questionType: .fillInTheBlank
                    )
                ]
            )
        ])
    }
}
