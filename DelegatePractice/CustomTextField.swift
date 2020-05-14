//
//  CustomTextField.swift
//  DelegatePractice
//
//  Created by 요한 on 2020/05/13.
//  Copyright © 2020 요한. All rights reserved.
//

import UIKit



class CustomTextField: UITextField {
    weak var textFieldDelegate: CustomTextFieldDelegate?
    
    override var textColor: UIColor? {
        get { return super.textColor }
        set {
            let checkText = textFieldDelegate?.checkForText(newValue)
            let newText = checkText ?? newValue ?? .gray
    
            super.textColor = newText
            print("Text Color: ", newText)
        }
    }
}
