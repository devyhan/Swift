//
//  CustomView.swift
//  DelegateExample
//
//  Created by 요한 on 2020/05/12.
//  Copyright © 2020 요한. All rights reserved.
//

import UIKit

protocol CustomViewDelegate: class { // : class 는 CustomViewDelegate Class 에서만 한정적으로 사용한다는 뜻 weak
    func colorForBackground(_ newColor: UIColor?) -> UIColor
    
}

class CustomView: UIView {
    weak var delegate: CustomViewDelegate?

    override var backgroundColor: UIColor? {
        get {
            return UIColor.systemBackground
        }
        set {
            let color = delegate?.colorForBackground(newValue) // UIColor, nil
            let newColor = color ?? newValue ?? .gray // nil 이면 newvalue를 넣고 newvalue도 nil이면 gray를 넣음
            
            super.backgroundColor = newColor // 상위의 backgroundcolor에 newColor를 넣음
            print("New Color :  n", newColor)
        }
    }
}
