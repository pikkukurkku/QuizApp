//
//  Question.swift
//  QuizApp
//
//  Created by Natalia Ogorek on 28.03.25.
//

import SwiftUI



struct Question: Hashable {
    
    let questionText: String
    let possibleAnswers: [String]
    let correctAnswerIndex: Int
  
    static var allQuestions =  [
        Question(questionText: "What popular operating system, launched in 1991, also has its own mascot, Tux the penguin?",
        possibleAnswers: ["Linux", "Vista", "Pingoo", "Tuxedoo"],
        correctAnswerIndex: 0),
        Question(questionText: "Andy Rubin is known as one of the three founders of what massively popular cell phone operating system?",
        possibleAnswers: ["Ruby", "Linux", "Android", "ChromeOS"],
        correctAnswerIndex: 2),
        Question(questionText: "Doug Engelbart was the inventor of what computer accessory? The first one was made from wood",
        possibleAnswers: ["USB-Stick", "Mouse", "Computer-camera", "Power bank"],
        correctAnswerIndex: 1),
        Question(questionText: "What Harvard dropout co-founded Microsoft?",
        possibleAnswers: ["Donald Whitaker", "Andy Hayes", "Steve Jobs", "Bill Gates"],
        correctAnswerIndex: 3),
        Question(questionText: "In what year was the iPhone first released?",
        possibleAnswers: ["2009", "2001", "2012", "2007"],
        correctAnswerIndex: 3),
        
    ]
}
