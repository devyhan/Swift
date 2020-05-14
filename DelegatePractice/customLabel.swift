//
//  customLabel.swift
//  DelegatePractice
//
//  Created by 요한 on 2020/05/13.
//  Copyright © 2020 요한. All rights reserved.
//
//
import UIKit

protocol CutomLabelDelegate: class {
    func labelForChange(_ newLabel: String?) -> String
}

class CustomLabel: UILabel {
    weak var delegate: CutomLabelDelegate?

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
