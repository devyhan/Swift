//
//  CustomView.swift
//  DelegatePractice
//
//  Created by 요한 on 2020/05/13.
//  Copyright © 2020 요한. All rights reserved.
//

import UIKit

protocol CustomViewDelegate: class {
    func colorForBackGround(_ newColor: UIColor?) -> UIColor
}

class CustomView: UIView {
    var delegate: CustomViewDelegate?
    
    override var backgroundColor: UIColor? {
        get {
            return super.backgroundColor
        }
        set {
            let color = delegate?.colorForBackGround(newValue)
            let newColor = color ?? newValue ?? .gray
            
            super.backgroundColor = newColor
            print("New BackgroundColor: ", newColor)
        }
    }
}








