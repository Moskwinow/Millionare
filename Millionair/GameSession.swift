//
//  GameSession.swift
//  Millionair
//
//  Created by Максим Вечирко on 08.04.2020.
//  Copyright © 2020 Максим Вечирко. All rights reserved.
//

import Foundation

class GameSession {
    let date: Date
    let score: Int
    let totalQuestions: Int
    
    init(date: Date, score: Int, totalQuestions: Int) {
        self.date = date
        self.score = score
        self.totalQuestions = totalQuestions
    }
}
