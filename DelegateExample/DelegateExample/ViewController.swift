//
//  ViewController.swift
//  DelegateExample
//
//  Created by 요한 on 2020/05/12.
//  Copyright © 2020 요한. All rights reserved.
//

import UIKit

class ViewController: UIViewController { // CustomViewDelegate프로토콜 채택
    
//    @IBOutlet private weak var customView: UIView!
//    @IBOutlet weak var customView: CustomView! // 어디에서 background를 호출해도 CustomView를 사용 가능.
    @IBOutlet private weak var textField: UITextField!
    let customView = CustomView()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        customView.delegate = self
        customView.backgroundColor = customView.backgroundColor
        
//        textField.delegate = self // 코드로 사용했을때, 스토리보드에서 연결한것처럼 delegate 연결을 해줘야함
//        changeBackgroundColor()
//        customView.backgroundColor = .red
        
//        customView.backgroundColor = nil
        // delegate / CustomView 를 사용하는 사용자에게 커스터마이징 할 수 있도록 기회를 제공 swift 는 delegate로 되어있다.
    }

    func changeBackgroundColor() {
        let colors: [UIColor] = [.green, .yellow]
        customView.backgroundColor = colors.randomElement()
        print(customView.backgroundColor)
    }
}

// MARK: - CustomViewDelegate

extension ViewController: CustomViewDelegate { // 클래스 안에 사용하지 않고 extansion으로 확장해 프로토콜을 채택하여 사용
    func colorForBackground(_ newColor: UIColor?) -> UIColor {
        guard let color = newColor else {
            return .gray
        } // color가 nil 이면 .gray 아니면 newColor
        return color == .green ? .blue : color
    }
}

// MARK: - UITextFieldDelegate

extension ViewController: UITextFieldDelegate {
    func textFieldDidEndEditing(_ textField: UITextField) {
        // 텍스트 필드 입력 종료될때
        guard let text = textField.text else {return}
        switch text {
        case "red":
            customView.backgroundColor = .red
        case "green":
            customView.backgroundColor = .green
        case "blue":
            customView.backgroundColor = .blue
        default:
            customView.backgroundColor = .gray
        }
        
        // 텍스트 필드에 red, blue, black, 그외에는 gray
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
