//
//  ScoreViewModel.swift
//  Code History
//
//  Created by Andreas Kiesel on 17.03.22.
//

import Foundation

struct ScoreViewModel {
    let correctGuess: Int
    let incorrectGuess: Int
    
    var percentage: Int {
        (correctGuess * 100) / (incorrectGuess + correctGuess)
    }
}
