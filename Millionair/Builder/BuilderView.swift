//
//  BuilderView.swift
//  Millionair
//
//  Created by Максим Вечирко on 18.04.2020.
//  Copyright © 2020 Юрий Султанов. All rights reserved.
//

import Foundation
import UIKit

enum ColorView {
    case boston, new_york, los_angeles
}

struct SettingView {
    
    var view: UIView
    var text: UILabel
    var button: UIButton
 
}

class ViewBuilder{
    
    private(set) var text: UILabel!
    private(set) var btn: UIButton!
    private(set) var view: UIView!

    func setParams(_ setView: UIView, text setText: UILabel, btn setButton: UIButton) {
        text = setText
        view = setView
        btn = setButton
    }
    
    
    func setViewColor(_ state: ColorView) {
        switch state {
        case .boston:
            btn.backgroundColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
            text.textColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
            view.backgroundColor = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
        case .new_york:
            
            btn.backgroundColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
            text.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            view.backgroundColor = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
        case .los_angeles:
            btn.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            text.textColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
            view.backgroundColor = #colorLiteral(red: 0.9890961051, green: 0.8382902741, blue: 0.2005989552, alpha: 1)
        }
    }
    
    func build() -> SettingView {
        return SettingView(view: view, text: text, button: btn)
    }
    
}
