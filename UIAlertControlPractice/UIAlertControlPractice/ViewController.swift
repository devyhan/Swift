//
//  ViewController.swift
//  UIAlertControlPractice
//
//  Created by 요한 on 2020/04/29.
//  Copyright © 2020 요한. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let counterLabel = UILabel()
    
    override func viewDidLoad() {
        view.backgroundColor = .systemBlue
        
        counterLabel.text = "Display"
        counterLabel.backgroundColor = .black
        counterLabel.frame = CGRect(x: view.center.x - 50, y: 300, width: 100, height: 40)
        counterLabel.textColor = .white
        counterLabel.textAlignment = .center
        

        
        let nextButton = UIButton()
        nextButton.frame = CGRect(x: view.center.x - 50, y: 500, width: 100, height: 40)
//        nextButton.frame.size = CGSize(width: 100, height: 40)
//        nextButton.center = view.center
        nextButton.setTitle("Next", for: .normal)
        nextButton.backgroundColor = .black
        nextButton.addTarget(self, action: #selector(nextButtonAction), for: .touchUpInside)
        
        view.addSubview(counterLabel)
        view.addSubview(nextButton)

    }
    
    @objc private func nextButtonAction() {
        let vc = AlertViewController()
        
        vc.modalPresentationStyle = .overFullScreen
        
        present(vc, animated: true)
    }

}

