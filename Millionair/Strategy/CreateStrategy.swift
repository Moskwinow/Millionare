//
//  CreateStrategy.swift
//  Millionair
//
//  Created by Максим Вечирко on 17.04.2020.
//  Copyright © 2020 Юрий Султанов. All rights reserved.
//

import Foundation

protocol CreateStrategyProtocol {
    func createQuestions(_ questionArray: [Question]) -> [Question]
}

final class CreateRandomStrategy: CreateStrategyProtocol {
    
    func createQuestions(_ questionArray: [Question]) -> [Question] {
        
        let qst = questionArray.randomElement()
        print([qst])
        
        return [qst!]
    }
    
}

final class SerialCreateStrategy: CreateStrategyProtocol {
    func createQuestions(_ questionArray: [Question]) -> [Question] {
        return questionArray
    }
    
}
