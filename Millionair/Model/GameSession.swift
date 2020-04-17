//
//  GameSession.swift
//  Millionair
//
//  Created by Максим Вечирко on 08.04.2020.
//  Copyright © 2020 Максим Вечирко. All rights reserved.
//

import Foundation

class GameSession: Codable {
    var date: Date
    var score: Int
    var percent: Int
    
    init (date: Date, score: Int, percent: Int) {
        self.date = date
        self.score = score
        self.percent = percent
    }
}
