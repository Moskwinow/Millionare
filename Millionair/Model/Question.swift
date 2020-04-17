//
//  Question.swift
//  Millionair
//
//  Created by Максим Вечирко on 08.04.2020.
//  Copyright © 2020 Максим Вечирко. All rights reserved.
//

import Foundation

struct Question {
    let question: String
    let correctAnswer: String
    let answers: [String]
    
    init(question: String, correctAnswer: String, answers: [String]) {
        self.question = question
        self.correctAnswer = correctAnswer
        self.answers = answers
    }
}

struct QuestionsBase {
    
    static func data() -> [Question] {
        
        let data = [
        
            Question(question: "На каком инструменте, как считается, играл древнерусский певец и сказитель Боян?", correctAnswer: "На гуслях", answers: ["На виолончели", "На баяне", "На гитаре", "На гуслях"]),
            Question(question: "В какой из этих стран один из официальных языков - французский?", correctAnswer: "Республика Гаити", answers: ["Кения", "Эквадор", "Венесуэла", "Республика Гаити"]),
            Question(question: "В каком из этих фильмов не снимался Александр Абдулов?", correctAnswer: "\"Московские каникулы\"", answers: ["\"Карнавал\"", "\"Чародеи\"", "\"Убить дракона\"","\"Московские каникулы\""]),
            Question(question: "В каком году произошла Куликовская битва?", correctAnswer: "1380", answers: ["1380", "1569", "1616", "1773"] ),
            Question(question: "Кто автор музыки к детской песенке Чунга-Чанга?", correctAnswer: "Шаинский", answers: ["Шаинский", "Зацепин", "Дербенёв", "Шпиц"]),
            Question(question: "Какая картина Малевича находится в Русском музее?", correctAnswer: "Красный квадрат", answers: ["Красный квадрат", "Белый квадрат", "Чёрный квадрат", "\"Точильщик\""]),
            Question(question: "Шкала Сковилла - это шкала оценки...", correctAnswer: "Остроты перца", answers: ["Остроты перца", "Привлекательности женщин", "Качества атмосферного воздуха", "Уровня моря"]),
            Question(question: "Какой титул имел Дон Кихот?", correctAnswer: "Идальго", answers: ["Идальго", "Барон", "Маркиз", "Вождь"]),
            Question(question: "Кто автор антиутопического романа \"О дивный новый мир\"?", correctAnswer: "Олдос Хаксли", answers: ["Олдос Хаксли", "Джордж Оруэлл", "Рэй Брэдбери", "Сомерсет Моэм"]),
            Question(question: "Как называется самая глубокая точка поверхности Земли, находящаяся на дне Марианской впадины?", correctAnswer: "Бездна Челленджера", answers: ["Бездна Челленджера", "Филиппинская плита", "Кермадек", "Черное Логово"])
          
        ]
        
        return data
    }
}
