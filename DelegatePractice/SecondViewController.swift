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

    let customView = CustomView()
    let customLabel = CustomLabel()
    let uiLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        customView.delegate = self
        view.backgroundColor = .blue
        
//        let viewController = presentingViewController as? ViewController
//        viewController?.delegate = self

        uiLabel.frame = CGRect(x: 40, y: 100, width: view.frame.width - 80, height: 100)
        
        view.addSubview(uiLabel)
    }
    
    
//
//    func labelForChange(_ newLabel: String?) -> String {
//        return
//    }
    
}

extension SecondViewController: CustomViewDelegate {
    func colorForBackGround(_ newColor: UIColor?) -> UIColor {
        guard let color = newColor else { return .gray }
        print("delegeta Color:",color)
        return color
    }
}


//extension SecondViewController: CustomTextFieldDelegate {
//    func checkForText(_ newText: UIColor?) -> UIColor {
//        guard let color = newText else { return .gray }
//        return color == .green ? .brown : color
//    }
//}

