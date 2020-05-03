//
//  ViewController.swift
//  Playground
//
//  Created by 요한 on 2020/04/29.
//  Copyright © 2020 요한. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var firstMenuCounter: Int = 0 {
        didSet {
//            firstMenuCounter

            dump(firstMenuCounter)

        }
    }
    var secondMenuCounter: Int = 0 {
        didSet {
//            secondMenuCounter
        }
    }
    
    
    let firstMenu = UILabel()
    let secondMenu = UILabel()
    let thiredMenu = UILabel()
    
    let menuNameLabel = UILabel()
    let menuPriceLabel = UILabel()
    let menuCoutLabel = UILabel()
    let menuCountButton = UIButton()
    
    let foundationButton = UIButton()
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        menuTitles()
        menuItem(name: "Menu01", price: "5000Won", count: String(firstMenuCounter), pointY: 150, btnAction: #selector(firstButtonAction(_:)), bgColor: .black)
        menuItem(name: "Menu02", price: "6000Won", count: String(secondMenuCounter), pointY: 250, btnAction: #selector(secondButtonAction(_:)), bgColor: .black)

 

    }
    
    func foundationLabel(for label: UILabel, text: String, frame: CGRect) {
        label.text = text
        label.frame = frame
        label.textAlignment = .center
        
        view.addSubview(label)
    }
    
    func foundationButton(for button: UIButton, title: String, btnAction: Selector, bgColor: UIColor, frame: CGRect) {
        button.setTitle(title, for: .normal)
        button.titleLabel?.font = .preferredFont(forTextStyle: .title2)
        button.addTarget(self, action: btnAction, for: .touchUpInside)
        button.backgroundColor = bgColor
        button.frame = frame

        view.addSubview(button)
    }
    
    func foundationTextField(for textField: UITextField, placeholder: String) {
        textField.placeholder = placeholder
        
        view.addSubview(textField)
    }
    
    func menuTitles() {
        let pointX = view.center.x

        let firstLabelPoint = CGRect(x: pointX - 200, y: 50, width: 100, height: 100)
        let secondLabelPoint = CGRect(x: pointX - 100, y: 50, width: 100, height: 100)
        let thiredLabelPoint = CGRect(x: pointX, y: 50, width: 100, height: 100)
        
        foundationLabel(for: firstMenu, text: "메뉴", frame: firstLabelPoint)
        foundationLabel(for: secondMenu, text: "가격", frame: secondLabelPoint)
        foundationLabel(for: thiredMenu, text: "수량", frame: thiredLabelPoint)
    }
    
    func menuItem(name: String, price: String, count: String, pointY: CGFloat, btnAction: Selector, bgColor: UIColor) {
        
        let pointX = view.center.x
        
        let firstLabelPoint = CGRect(x: pointX - 200, y: pointY, width: 100, height: 50)
        let secondLabelPoint = CGRect(x: pointX - 100, y: pointY, width: 100, height: 50)
        let thiredLabelPoint = CGRect(x: pointX, y: pointY, width: 100, height: 50)
        let forthButtonPoint = CGRect(x: pointX + 100, y: pointY, width: 100, height: 50)
        
        foundationLabel(for: menuNameLabel, text: name, frame: firstLabelPoint)
        foundationLabel(for: menuPriceLabel, text: price, frame: secondLabelPoint)
        foundationLabel(for: menuCoutLabel, text: count, frame: thiredLabelPoint)

        foundationButton.setTitle(title, for: .normal)
        foundationButton.titleLabel?.font = .preferredFont(forTextStyle: .title2)
        foundationButton.addTarget(self, action: btnAction, for: .touchUpInside)
        foundationButton.backgroundColor = bgColor
        foundationButton.frame = forthButtonPoint

        view.addSubview(foundationButton)
    }
    
//    foundationButton.setTitle(title, for: .normal)
//     foundationButton.titleLabel?.font = .preferredFont(forTextStyle: .title2)
//     foundationButton.addTarget(self, action: btnAction, for: .touchUpInside)
//     foundationButton.backgroundColor = bgColor
//     foundationButton.frame = frame
//
//     view.addSubview(foundationButton)
    
    @objc func firstButtonAction(_ sender: Any) {
        firstMenuCounter += 1
    }
    
    @objc func secondButtonAction(_ sender: Any) {
        secondMenuCounter += 1
    }
    
    
    
}
