//
//  AlertViewController.swift
//  UIAlertControlPractice
//
//  Created by 요한 on 2020/04/29.
//  Copyright © 2020 요한. All rights reserved.
//

import UIKit

class AlertViewController: UIViewController {

    let alertLabel = UILabel()
    let titleLabel = UILabel()
    let subtitleLabel = UILabel()
    let textField = UITextField()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        alertLabel.backgroundColor = .black
        alertLabel.frame = CGRect(x: view.center.x - 150, y: view.center.y - 150, width: 300, height: 300)
        alertLabel.textColor = .white
        alertLabel.textAlignment = .center
        
        
        titleLabel.text = "Title"
        titleLabel.frame = CGRect(x: view.center.x - 25 , y: view.center.y - 150, width: 100, height: 100)
        titleLabel.textColor = .white
        
        
        
        
        subtitleLabel.text = "Message"
        subtitleLabel.frame = CGRect(x: view.center.x - 15 , y: view.center.y - 100, width: 100, height: 100)
        subtitleLabel.textColor = .white
        
        textField.placeholder = "입력하세요"
        textField.frame = CGRect(x: view.center.x - 100, y: view.center.y , width: 200, height: 50)
        textField.font = .preferredFont(forTextStyle: .title1)
        textField.textAlignment = .left
        textField.borderStyle = .roundedRect
        textField.isSecureTextEntry = false
        
        let cancelButton = UIButton()
        cancelButton.setTitle("Cancel", for: .normal)
        cancelButton.frame = CGRect(x: view.center.x - 100, y: 500, width: 100, height: 40)
        
        let enterButton = UIButton()
        enterButton.setTitle("Enter", for: .normal)
        enterButton.frame = CGRect(x: view.center.x, y: 500, width: 100, height: 40)
        
        view.addSubview(alertLabel)
        view.addSubview(titleLabel)
        view.addSubview(subtitleLabel)
        view.addSubview(textField)
        view.addSubview(cancelButton)
        view.addSubview(enterButton)
        
        view.backgroundColor = UIColor.yellow.withAlphaComponent(0.2) // 뒤에있는 뷰컨트롤러가 보이게 됨 
    }
}
