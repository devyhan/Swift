//
//  SecondViewController.swift
//  DelegatePractice
//
//  Created by 요한 on 2020/05/13.
//  Copyright © 2020 요한. All rights reserved.
//

import UIKit

protocol textDelegateDelivery: class {
    func goData(data: String)
}


class SecondViewController: UIViewController {


//    let customView = CustomView()
    let customLabel = CustomLabel()
    let uiLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let viewController = presentingViewController as? ViewController
//        viewController?.delegate = self

        view.backgroundColor = .white

        uiLabel.text = "None"
        uiLabel.frame = CGRect(x: 40, y: 100, width: view.frame.width - 80, height: 100)
        
        view.addSubview(uiLabel)
        
//        customLabel.text = "None"
//        customLabel.delegate = self
//        customLabel.frame = CGRect(x: 40, y: 100, width: view.frame.width - 80, height: 200)
        
//        customView.backgroundColor = .systemGreen
//        customView.delegate = self
//        customView.frame = CGRect(x: 40, y: 100, width: view.frame.width - 80, height: 400)
        
//        view.addSubview(customView)
        
    }
    
    func goData(data: String) {
        uiLabel.text = data
    }
    
    
//
//    func labelForChange(_ newLabel: String?) -> String {
//        return
//    }
    
}

//extension SecondViewController: CustomTextFieldDelegate {
//    func checkForText(_ newText: UIColor?) -> UIColor {
//        guard let color = newText else { return .gray }
//        return color == .green ? .brown : color
//    }
//}

