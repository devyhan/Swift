//
//  ViewController.swift
//  UIAlertControlExample
//
//  Created by 요한 on 2020/04/28.
//  Copyright © 2020 요한. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let counterLabel = UILabel()
    var oldNum: Int = 0
    var count: Int = 0 {
        didSet {
            oldNum = oldValue
            print("이전 값 \(oldValue)")
            // myProperty의 값이 변경된 직후에 호출, oldVal은 변경 전 myProperty의 값
        }
        willSet {
            print("count\(count)")
            print(newValue)
            counterLabel.text = "\(newValue)"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        counterLabel.text = String(self.count)
        counterLabel.font = .preferredFont(forTextStyle: .largeTitle)
        counterLabel.frame = CGRect(x: 0, y: 150, width: 100, height: 100)
        counterLabel.center.x = view.center.x // counterLabel의 x축을 cneter로 정렬
        counterLabel.textAlignment = .center
        view.addSubview(counterLabel)
        
        let button = UIButton(type: .system)
        button.setTitle("Present", for: .normal)
        button.titleLabel?.font = .preferredFont(forTextStyle: .title3)
        button.sizeToFit()
        button.center = view.center
        button.addTarget(self, action: #selector(showAlert(_:)), for: .touchUpInside)
        view.addSubview(button)
    }
    
    @objc func showAlert(_ sender: Any) {
        
        let alertController = UIAlertController(title: "", message: "카운트 추가", preferredStyle: .alert)
        
        alertController.addTextField {
            $0.placeholder = "Enter Int"
        }
        
        let okAction = UIAlertAction(title: "Add Count", style: .default) {_ in
          var addValue = 1

           if let textField = alertController.textFields?.first,
             let inputValue = textField.text,
             let number = Int(inputValue) {
             addValue = number
           }
           self.count += addValue
           print("Add count \(addValue)")
            
        }
        let returnAction = UIAlertAction(title: "Return", style: .default) {_ in
            self.counterLabel.text = String(self.oldNum)
            self.count = self.oldNum
        }
        let deleteAction = UIAlertAction(title: "Reset", style: .destructive) {_ in
            self.count = 0
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) {_ in
            
        }

        for action in [okAction, deleteAction, cancelAction, returnAction] {
            alertController.addAction(action)
        }
        
        present(alertController, animated: true)
    }
}

