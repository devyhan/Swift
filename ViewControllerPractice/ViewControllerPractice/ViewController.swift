//
//  ViewController.swift
//  ViewControllerPractice
//
//  Created by 요한 on 2020/04/27.
//  Copyright © 2020 요한. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let quantityLabel = UILabel()


    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupLabel()
        setupButton()
    }

    func setupLabel() {
        quantityLabel.frame = CGRect(x: 140, y: 100, width: 80, height: 30)
        quantityLabel.text = "0"
        quantityLabel.textColor = .darkText
        quantityLabel.textAlignment = .center
        view.addSubview(quantityLabel)
    }
    
    func setupButton() {
        let button = UIButton()
        button.frame = CGRect(x: 130, y: 200, width: 100, height: 30)
        button.setTitle("Button", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = UIColor.systemBlue.withAlphaComponent(0.4)
        button.addTarget(self, action: #selector(increaseQuantity), for: .touchUpInside)
        view.addSubview(button)
    }
    
    @objc func increaseQuantity() {
        guard let text = quantityLabel.text,
            let quantity = Int(text)
            else { return }

//        let VC = BViewController()
//        present(VC, animated: false)
//        quantityLabel.text = String(quantity + 3)
        
        if let VC = presentingViewController?.presentingViewController as? BViewController {
          quantityLabel.text = String(quantity + 3)
        }
        
    }
}

