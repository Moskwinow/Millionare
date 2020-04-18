//
//  SettingVC.swift
//  Millionair
//
//  Created by Максим Вечирко on 18.04.2020.
//  Copyright © 2020 Юрий Султанов. All rights reserved.
//

import UIKit


class SettingVC: UIViewController {
    
    var builder = ViewBuilder()
    var mainText: UILabel?
    var mainBtn: UIButton?
    var mainView: UIView?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        builder.setParams(mainView!, text: mainText!, btn: mainBtn!)
    }
    
    
    @IBAction func newyorkButton(_ sender: UIButton) {
        builder.setViewColor(.new_york)
        _ = builder.build()
        
    }
    
    @IBAction func lasangelesButton(_ sender: UIButton) {
        builder.setViewColor(.los_angeles)
        _ = builder.build()
        
    }
    
    @IBAction func bostonButton(_ sender: UIButton) {
        builder.setViewColor(.boston)
        _ = builder.build()
        
    }
}
