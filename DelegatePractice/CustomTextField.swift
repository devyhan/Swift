//
//  customTextField.swift
//  DelegatePractice
//
//  Created by 요한 on 2020/05/17.
//  Copyright © 2020 요한. All rights reserved.
//

import UIKit

class customTextField: UITextField {
    

    override var backgroundColor: UIColor? {
        get { super.backgroundColor }
        set {
            super.textColor = newColor
        }
    }

}
