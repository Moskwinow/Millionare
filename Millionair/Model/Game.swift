//
//  Game.swift
//  Millionair
//
//  Created by Максим Вечирко on 08.04.2020.
//  Copyright © 2020 Максим Вечирко. All rights reserved.
//

import Foundation

class Game {
    
    static let shared = Game()
    
    private(set) var records: [GameSession] {
        didSet {
            recordsProvider.save(records: self.records)
        }
    }
    
    private let recordsProvider = RecordProvider()
    
    private init() {
        self.records = self.recordsProvider.retrieveRecords()
    }
    
    func addRecord(_ record: GameSession) {
        self.records.append(record)
    }
    
    func clearRecords() {
        self.records = []
    }
}
