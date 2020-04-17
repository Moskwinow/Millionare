//
//  ViewController.swift
//  Millionair
//
//  Created by Максим Вечирко on 08.04.2020.
//  Copyright © 2020 Максим Вечирко. All rights reserved.
//

import UIKit

class MainController: UIViewController {
    @IBAction func goToMain(_ unwindSegue: UIStoryboardSegue) {}
    
    @IBOutlet var playButton: UIButton!
    @IBOutlet var resultButton: UIButton!
    @IBOutlet var resultLabel: UILabel!
    
    private let cornerRadius: CGFloat = 20
    
    override func viewDidLoad() {
        super.viewDidLoad()
        playButton.layer.cornerRadius = cornerRadius
        resultButton.layer.cornerRadius = cornerRadius
        guard let record = Game.shared.records.last else {
            self.resultLabel.isHidden = true
            return
        }
        self.resultLabel.text = "Последний результат: \(record.score)"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
        case "playSegue":
            guard let destination = segue.destination as? GameController else { print("SomeError!"); return }
            destination.correctAnswersHandler = { [weak self] result in
                self?.resultLabel.text = "Последний результат: \(result)"
            }
        default:
            break
        }
    }
}

