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
    @IBAction func goToMain(_ unwindSegue: UIStoryboardSegue) {}
    
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
        default:
            break
        }
    }
}


