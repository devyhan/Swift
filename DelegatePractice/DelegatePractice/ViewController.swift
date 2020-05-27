//
//  ViewController.swift
//  DelegatePractice
//
//  Created by 요한 on 2020/05/13.
//  Copyright © 2020 요한. All rights reserved.
//

import UIKit

protocol CustomTextFieldDelegate: class {
    func checkForText(_ newText: UIColor?) -> UIColor
}

class ViewController: UIViewController, UITextFieldDelegate {
    
//    weak var delegate: textDelegateDelivery?
    
    let customView = CustomView()
    let customTextField = CustomTextField()
    let userInputLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        customView.delegate = self
        customTextField.delegate = self
        
        foundationView(for: customView, frame: CGRect(x: 40, y: 100, width: view.frame.width - 80, height: 200), backgroundColor: .white)
//        customView.frame = CGRect(x: 40, y: 100, width: view.frame.width - 80, height: 200)
        customView.backgroundColor = .green
        
//        customTextField.textFieldDelegate = self
        customTextField.delegate = self
        customTextField.frame = CGRect(x: 40, y: 400, width: view.frame.width - 80, height: 100)
        customTextField.borderStyle = .line
        customTextField.textColor = .black
        customTextField.font = UIFont.preferredFont(forTextStyle: .largeTitle)
        
        userInputLabel.text = "None"
        userInputLabel.frame = CGRect(x: 40, y: 600, width: view.frame.width - 80, height: 100)
        userInputLabel.font = UIFont.preferredFont(forTextStyle: .largeTitle)
        userInputLabel.textAlignment = .center
        
        view.addSubview(customView)
        view.addSubview(customTextField)
        view.addSubview(userInputLabel)
    }
    
    func foundationView(for fdView: UIView, frame: CGRect, backgroundColor: UIColor) {
        fdView.backgroundColor = backgroundColor
        fdView.frame = frame
        
        view.addSubview(fdView)
    }
    
    
    
    //    extension으로 ViewController class확장
    //    func colorForBackGround(_ newColor: UIColor?) -> UIColor {
    //        guard let color = newColor else { return .gray }
    //        return color == .green ? .blue : color
    //    }
    
    //    func checkForText(_ newText: UIColor?) -> UIColor {
    //        guard let color = newText else { return .gray }
    //        return color == .black ? .brown : color
    //    }
    
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        print("DidEndEditing")

        
        guard let text = textField.text else { return }
        switch text {
        case "Red":
            customView.backgroundColor = .red
            customTextField.textColor = .red
        case "Green":
            customView.backgroundColor = .green
            customTextField.textColor = .green
        case "Blue":
            customView.backgroundColor = .blue
            customTextField.textColor = .blue
        default:
            customView.backgroundColor = .gray
            customTextField.textColor = .gray
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
//        userInputLabel.text = textField.text
        // SecondViewController
        let text: String = textField.text!
        let vc = SecondViewController()
        
        vc.uiLabel.text = text
        print(text)
        
        
        present(vc, animated: true)
        
//        if let data = textField.text {
//            present(vc, animated: true, completion: {self.delegate?.goData(data: data)} )
//        }

        return true
    }
}


extension ViewController: CustomViewDelegate, CustomTextField {
    func colorForBackGround(_ newColor: UIColor?) -> UIColor {
        guard let color = newColor else { return .gray }
        return color == .green ? .cyan : color
    }
    
    
}



