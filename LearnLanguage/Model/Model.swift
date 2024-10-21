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
                lessonText: "In this lesson, we'll learn basic Spanish greetings and farewells.",
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
                lessonText: "In this lesson, we'll learn some common Spanish phrases.",
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
                lessonText: "In this lesson, we'll learn basic numbers in Spanish.",
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
                lessonText: "In this lesson, we'll learn Colors in Spanish.",
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
                lessonText: "In this lesson, we'll learn some common Spanish family relationships.",
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
                lessonText: "In this lesson, we'll learn types of food in Spanish.",
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
                lessonText: "In this lesson, we'll learn some common Spanish adjectives.",
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
                lessonText: "In this lesson, we'll learn the days of the week in Spanish.",
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
                lessonText: "In this lesson, we'll learn some common Spanish phrases for the weather.",
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
                lessonText: "In this lesson, we'll learn Spanish verbs.",
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
