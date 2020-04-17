//
//  GameController.swift
//  Millionair
//
//  Created by Максим Вечирко on 08.04.2020.
//  Copyright © 2020 Максим Вечирко. All rights reserved.
//

import UIKit



class GameController: UIViewController  {
    
    @IBOutlet weak var question: UILabel!
    @IBOutlet weak var answerOne: UIButton!
    @IBOutlet weak var answerTwo: UIButton!
    @IBOutlet weak var answerThree: UIButton!
    @IBOutlet weak var answerFour: UIButton!
    @IBOutlet weak var percentLabel: UILabel!
    
    var difficulty: Difficulty = .serial
    
    var randomQuestionsArray: [Question] = []
    var strategy: CreateStrategyProtocol!
    let buttonCornerRadius: CGFloat = 50
    var correctAnswers: Int = 0
    var correctAnswersHandler: ((Int) -> Void)?
    var percent = 0
    var facade: DifficultyFacade!
    var arrayOfQuestions: [Question] = QuestionsBase.data()
    var resultPercent = Observable<String>("0")
    

    override func viewDidLoad() {
        super.viewDidLoad()
        answerOne.layer.cornerRadius = buttonCornerRadius
        answerTwo.layer.cornerRadius = buttonCornerRadius
        answerThree.layer.cornerRadius = buttonCornerRadius
        answerFour.layer.cornerRadius = buttonCornerRadius
        facade = DifficultyFacade(difficulty: difficulty)
        facade.getaArray(arrayOfQuestions)
        changeQuestion()
        resultPercent.addObserver(percent as AnyObject, options: [.new, .initial]) { [weak self] (percent, _) in
            guard let self = self else {return}
            self.percentLabel.text = "Вы ответили на  \(percent)% вопросов"
        }
    }
    
    @IBAction func checkAnswer(sender: UIButton) {

           guard let currentQuestion = arrayOfQuestions.first(where: { qst -> Bool in
               return qst.question == question.text
           }) else {return}
           
           if sender.currentTitle == currentQuestion.correctAnswer{
               arrayOfQuestions.removeAll { qst -> Bool in
                   return qst.question == question.text
            }
            facade.getaArray(arrayOfQuestions)
            self.correctAnswers += 1
            
               self.changeQuestion()
           } else {
               guard self.correctAnswers > 0 else {
                   self.dismiss(animated: true, completion: nil)
                   return
               }
               self.saveAndExit()
           }
       }
    
    private func changeQuestion() {
        percent = 100 * correctAnswers / 10
        resultPercent.value = "\(percent)"
        
        
        randomQuestionsArray = facade.setGame()
        let qst = randomQuestionsArray
        self.question.text = qst[0].question
        if !randomQuestionsArray.isEmpty {
        let answers = qst[0].answers.shuffled()
        answerOne.setTitle(answers[0], for: .normal)
        answerTwo.setTitle(answers[1], for: .normal)
        answerThree.setTitle(answers[2], for: .normal)
        answerFour.setTitle(answers[3], for: .normal)
        }
    }
  
    private func saveAndExit() {
        
        guard self.correctAnswers > 0 else {
            self.dismiss(animated: true, completion: nil)
            return
        }
        
        let record = GameSession (date: Date(), score: correctAnswers, percent: Int(percent))
        Game.shared.addRecord(record)
        self.correctAnswersHandler?(self.correctAnswers)
        self.dismiss(animated: true, completion: nil)
    }
    
    
    
}
