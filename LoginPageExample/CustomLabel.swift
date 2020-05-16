//
//  CustomLabel.swift
//  LoginPageExample
//
//  Created by 요한 on 2020/05/14.
//  Copyright © 2020 요한. All rights reserved.
//

import UIKit

// MARK: - Protocol
protocol CustomLabelDelegate: class {
    func labelForChange(_ newLabel: String?) -> String
}

class CustomLabel: UILabel {
    weak var delegate: CustomLabelDelegate?
    
    override var text: String? {
        get { return super.text }
        set {
            let label = delegate?.labelForChange(newValue)
            let newlabel = label ?? newValue ?? ""
            
            super.text = newlabel
            print("Label :", newlabel)
        }
    }
}
