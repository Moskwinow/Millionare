//
//  ViewController.swift
//  Millionair
//
//  Created by Максим Вечирко on 08.04.2020.
//  Copyright © 2020 Максим Вечирко. All rights reserved.
//

import UIKit

enum Difficulty {
    case serial, random
}

class MainController: UIViewController {
    
    
    @IBOutlet var playButton: UIButton!
    @IBOutlet var resultButton: UIButton!
    @IBOutlet var resultLabel: UILabel!
    @IBOutlet weak var difficultyControl: UISegmentedControl!

    private let cornerRadius: CGFloat = 20
    
    override func viewDidLoad() {
        super.viewDidLoad()
        playButton.layer.cornerRadius = cornerRadius
        resultButton.layer.cornerRadius = cornerRadius
        guard let record = Game.shared.records.last else {

        return
        }
        self.resultLabel.text = "Последний результат верных ответов: \(record.score)"
    }
    @IBAction func goToMain(_ unwindSegue: UIStoryboardSegue) {
       
    }
    private var selectDifficulty: Difficulty {
        switch self.difficultyControl.selectedSegmentIndex {
        case 0:
            return .serial
        case 1:
            return .random
        default:
            return .serial
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
        case "playSegue":
            guard let destination = segue.destination as? GameController else { print("SomeError!"); return }
            destination.difficulty = selectDifficulty
            destination.correctAnswersHandler = { [weak self] result in
                self?.resultLabel.text = "Последний результат: \(result)"
            }
        case "SettingSegue":
            let destination = segue.destination as! SettingVC
            if #available(iOS 13.0, *) {
                destination.modalPresentationStyle = .automatic
                destination.mainText = resultLabel
                destination.mainBtn = playButton
                destination.mainView = view
            } else {
                destination.modalPresentationStyle = .pageSheet
            }
        default:
            break
        }
    }
}


