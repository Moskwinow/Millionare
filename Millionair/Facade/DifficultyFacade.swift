//
//  DifficultyFacade.swift
//  Millionair
//
//  Created by Максим Вечирко on 17.04.2020.
//  Copyright © 2020 Юрий Султанов. All rights reserved.
//

import Foundation

final class DifficultyFacade {
    let difficulty: Difficulty
    
    fileprivate var array: [Question] = []
    var strategy: CreateStrategyProtocol!
    
    private var  createStrategy: CreateStrategyProtocol {
        switch self.difficulty {
        case .random:

            return CreateRandomStrategy()
        case .serial:
            return SerialCreateStrategy()
        
        }
    }
    
    init(difficulty: Difficulty) {
        self.difficulty = difficulty
    }
    
    func getaArray(_ qstArray: [Question]) {
    }
    
    func setGame() -> [Question] {
        return array
    }
    
    
    
}
