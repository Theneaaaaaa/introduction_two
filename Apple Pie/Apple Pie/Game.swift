//
//  Game.swift
//  Apple Pie
//
//  Created by Thenea on 4/4/19.
//  Copyright © 2019 Thenea. All rights reserved.
//

import Foundation

struct Game {
    var word: String
    var incorrectMovesRemaining: Int
    var guessedLetters: [Character]
    
    mutating func playerGuessed(letter: Character) {
        guessedLetters.append(letter)
        if !word.contains(letter) {
            incorrectMovesRemaining -= 1
        }}
            
    var formattedWord: String {
        var guessedWord = ""
            for letter in word {
                if guessedLetters.contains(letter) {
                    guessedWord += "\(letter)"
                } else {
                    guessedWord += "_"
                }
            }
            return guessedWord
    }
}
