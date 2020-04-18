//
//  SettingVC.swift
//  Millionair
//
//  Created by Максим Вечирко on 18.04.2020.
//  Copyright © 2020 Юрий Султанов. All rights reserved.
//

import UIKit

class SettingVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func newyorkButton(_ sender: UIButton) {
            let builder = BuilderView(viewC: view)
            builder.setViewColor(view: .dark)
            
            
        
    }
    
    @IBAction func lasangelesButton(_ sender: UIButton) {
    }
    
    @IBAction func bostonButton(_ sender: UIButton) {
    }
}
