//
//  CodeViewController.swift
//  UITextFieldExample
//
//  Created by 요한 on 2020/04/28.
//  Copyright © 2020 요한. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        idTextFiled()
        nicTextFiled()
        pwTextFiled()
    }
    
    func setupCommonAttributes(for textField: UITextField, holder: String, frame: CGRect, secure: Bool) {
        textField.placeholder = holder
        textField.frame = frame
        textField.font = .preferredFont(forTextStyle: .title1)
        textField.textAlignment = .left
        textField.borderStyle = .roundedRect
        textField.isSecureTextEntry = secure
        
        view.addSubview(textField)
    }
    
    let textIDField = UITextField()
    
    func idTextFiled() {
        let frame = CGRect(x: 40, y: 100, width: 300, height: 40)
        setupCommonAttributes(for: textIDField, holder: "아이디를 입력하세요", frame:frame, secure: false)
    }
    
    let textNicField = UITextField()
    
    func nicTextFiled() {
        let frame = CGRect(x: 40, y: 160, width: 300, height: 40)
        setupCommonAttributes(for: textNicField, holder: "닉네임을 입력하세요", frame:frame, secure: false)
    }

    let textPwField = UITextField()
    
    func pwTextFiled() {
        let frame = CGRect(x: 40, y: 220, width: 300, height: 40)
        setupCommonAttributes(for: textPwField, holder: "비밀번호를 입력하세요", frame:frame, secure: true)
    }

    
    
    
    
}
