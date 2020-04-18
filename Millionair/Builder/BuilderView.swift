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
    case blue, dark, green
}

struct BuilderView {
    
    private(set) var viewC: UIView     
    
    func build() -> BuilderView {
        return BuilderView(viewC: viewC)
    }
    
    func setViewColor(view viewCC: ColorView) {
        
        switch viewCC {
        case .blue:
            return viewC.backgroundColor = #colorLiteral(red: 0.3027753532, green: 0.758846581, blue: 0.9087330699, alpha: 1)
        case .dark:
            return viewC.backgroundColor = #colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)
        case.green:
            return viewC.backgroundColor = #colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1)
        }
    }
    
    
    
}
