//
//  Game.swift
//  QuizApp
//
//  Created by Natalia Ogorek on 28.03.25.
//

import SwiftUI


struct Game {
    private(set) var currentQuestionIndex = 0
    private(set) var guesses = [Question: Int]()
    private(set) var isOver = false
    private let questions = Question.allQuestions.shuffled()
    
    var guessCount: (correct: Int, incorrect: Int) {
            var count: (correct: Int, incorrect: Int) = (0, 0)
            for (question, guessedIndex) in guesses {
                if question.correctAnswerIndex == guessedIndex {
                    count.correct += 1
                } else {
                    count.incorrect += 1
                }
            }
            return count
        }
            
        var numberOfQuestions: Int {
            questions.count
        }
        
        var currentQuestion: Question {
            questions[currentQuestionIndex]
        }

        mutating func makeGuessForCurrentQuestion(atIndex index: Int) {
            guesses[currentQuestion] = index
        }

        mutating func updateGameStatus() {
            if currentQuestionIndex < questions.count - 1 {
                currentQuestionIndex += 1
            } else {
                isOver = true
            }
        }
    
    mutating func restartGame() {
        if isOver {
            // navigate to Welcome screen and reset game
        }
    }
    }
