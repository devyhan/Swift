//
//  ViewController.swift
//  test
//
//  Created by 요한 on 2020/05/01.
//  Copyright © 2020 요한. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var firstMenuCountLabel: UILabel!
    @IBOutlet var secondMenuCountLabel: UILabel!
    @IBOutlet var thirdMenuCountLabel: UILabel!
    
    var 소지금: Int = 70000 {
        didSet {
            amountNum.text = "\(String(소지금))원"
        }
    }
    var 결제금액: Int = 0 {
        didSet {
            paymentNum.text = "\(String(결제금액))원"
        }
    }
    var countFirstMenu: Int = 0 {
        didSet {
            firstMenuCountLabel.text = String(countFirstMenu)
            결제금액 += 5000
        }
    }
    var countSecondMenu: Int = 0 {
        didSet {
            secondMenuCountLabel.text = String(countSecondMenu)
            결제금액 += 6000
        }
    }
    var countThirdMenu: Int = 0 {
        didSet {
            thirdMenuCountLabel.text = String(countThirdMenu)
            결제금액 += 12000
        }
    }
    
    let menu = UILabel()
    let price = UILabel()
    let count = UILabel()
    
    let amount = UILabel()
    let payment = UILabel()
    
    let amountNum = UILabel()
    let paymentNum = UILabel()
    
    let resetButton = UIButton()
    let paymentButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        MenuLabel()
        calculationLabel()
        resetButtonFunc()
        paymentButtonFunc()
    }
    
    func foundationLabel(for label: UILabel, text: String, frame: CGRect, bgColor: UIColor, textAligen: NSTextAlignment) {
        label.text = text
        label.frame = frame
        label.textAlignment = .center
        label.backgroundColor = bgColor
        label.textAlignment = textAligen
        
        view.addSubview(label)
    }
    
    func MenuLabel() {
        let pointX = view.center.x
        print(view.center.x)
        
        let firstLabelPoint = CGRect(x: pointX - 200, y: 50, width: 100, height: 100)
        let secondLabelPoint = CGRect(x: pointX - 100, y: 50, width: 100, height: 100)
        let thiredLabelPoint = CGRect(x: pointX, y: 50, width: 100, height: 100)
        
        foundationLabel(for: menu, text: "메뉴", frame: firstLabelPoint, bgColor: .white, textAligen: .center)
        foundationLabel(for: price, text: "가격", frame: secondLabelPoint, bgColor: .white, textAligen: .center)
        foundationLabel(for: count, text: "수량", frame: thiredLabelPoint, bgColor: .white, textAligen: .center)
    }
    
    func calculationLabel() {
        let pointX = view.center.x
        
        let firstLabelPoint = CGRect(x: pointX - 200, y: 400, width: 100, height: 50)
        let firstLabelRightPoint = CGRect(x: pointX - 80, y: 400, width: 150, height: 50)
        
        let secondLabelPoint = CGRect(x: pointX - 200, y: 465, width: 100, height: 50)
        let secondLabelRightPoint = CGRect(x: pointX - 80, y: 465, width: 150, height: 50)
        
        foundationLabel(for: amount, text: "소지금", frame: firstLabelPoint, bgColor: .systemGreen, textAligen: .center)
        foundationLabel(for: payment, text: "결제금액", frame: secondLabelPoint, bgColor: .systemOrange, textAligen: .center)
        foundationLabel(for: amountNum, text: "\(String(소지금))원", frame: firstLabelRightPoint, bgColor: .systemGreen, textAligen: .right)
        foundationLabel(for: paymentNum, text: "\(String(결제금액))원", frame: secondLabelRightPoint, bgColor: .systemOrange, textAligen: .right)
    }
    
    func resetButtonFunc() {
        let pointX = view.center.x
        
        let buttonPoint = CGRect(x: pointX + 100, y: 400, width: 100, height: 50)
        
        resetButton.setTitle("초기화", for: .normal)
        resetButton.backgroundColor = .black
        resetButton.frame = buttonPoint
        resetButton.addTarget(self, action: #selector(resetAction), for: .touchUpInside)
        
        view.addSubview(resetButton)
    }
    
    func paymentButtonFunc() {
        let pointX = view.center.x
        
        let buttonPoint = CGRect(x: pointX + 100, y: 465, width: 100, height: 50)
        
        paymentButton.setTitle("결제", for: .normal)
        paymentButton.backgroundColor = .black
        paymentButton.frame = buttonPoint
        paymentButton.addTarget(self, action: #selector(paymentAction), for: .touchUpInside)
        
        view.addSubview(paymentButton)
    }
    
    
    @objc func resetAction(_ sender: Any) {
        print("Enter Reset")
        print(countFirstMenu)
        countFirstMenu = 0
        countSecondMenu = 0
        countThirdMenu = 0
        결제금액 = 0
        소지금 = 70000
    }
    
    @objc func paymentAction(_ sender: Any) {
        print("Enter Payment")
        
        let paymentFailAlertController = UIAlertController(title: "소지금이 부족합니다.", message: "총 결제금액은 \(String(결제금액))이며, 결제시 부족한 금액은 \(String(결제금액-소지금))입니다.", preferredStyle: .alert)
        
        let paymentSuccessAlertController = UIAlertController(title: "결제하기", message: "총 결제금액은 \(String(결제금액))입니다.", preferredStyle: .alert)
        
        let paymentSameAlertController = UIAlertController(title: "결제하기", message: "총 결제금액은 \(String(결제금액))입니다.", preferredStyle: .alert)
        
        if 결제금액 > 소지금{
            present(paymentFailAlertController, animated: true)
            let okAction = UIAlertAction(title: "확인", style: .default) {_ in
                
            }
            for action in [okAction] {
                paymentFailAlertController.addAction(action)
            }
        } else if 결제금액 < 소지금{
            present(paymentSuccessAlertController, animated: true)
            
            let cancelAction = UIAlertAction(title: "취소", style: .cancel) {_ in
                
            }
            
            let okAction = UIAlertAction(title: "확인", style: .default) {_ in
                self.소지금 = self.소지금 - self.결제금액
                
                self.countFirstMenu = 0
                self.countSecondMenu = 0
                self.countThirdMenu = 0
                self.결제금액 = 0
                print(self.결제금액)
            }
            
            for action in [okAction, cancelAction] {
                paymentSuccessAlertController.addAction(action)
            }
        } else if 결제금액 == 소지금 {
            present(paymentSameAlertController, animated: true)
            
            let cancelAction = UIAlertAction(title: "취소", style: .cancel) {_ in
                
            }
            
            let okAction = UIAlertAction(title: "확인", style: .default) {_ in
                self.소지금 = self.소지금 - self.결제금액
                
                self.countFirstMenu = 0
                self.countSecondMenu = 0
                self.countThirdMenu = 0
                self.결제금액 = 0
                print(self.결제금액)
            }
            
            for action in [okAction, cancelAction] {
                paymentSameAlertController.addAction(action)
            }
        }
    }
    
    @IBAction func orderFirstMenu(_ sender: Any) {
        print("1st")
        countFirstMenu += 1
    }
    
    @IBAction func orderSecondMenu(_ sender: Any) {
        print("2nd")
        countSecondMenu += 1
    }
    
    @IBAction func orderThirdMenu(_ sender: Any) {
        print("3th")
        countThirdMenu += 1
    }
}
