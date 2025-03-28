//
//  ScoreViewModel.swift
//  QuizApp
//
//  Created by Natalia Ogorek on 28.03.25.
//

import Foundation

struct ScoreViewModel {
    let correctGuesses: Int
    let incorrectGuesses: Int
    
    var percentage: Int {
        (correctGuesses * 100 / (correctGuesses + incorrectGuesses))
      }}
