//
//  ViewController.swift
//  AutoLayoutPractice
//
//  Created by 요한 on 2020/05/18.
//  Copyright © 2020 요한. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
//    let leftView = UIView()
//    let rightView = UIView()
    
    let animationButton = UIButton()
    let moveView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
         
        animationButton.addTarget(self, action: #selector(moveItem(_:)), for: .touchUpInside)
        
        moveView.backgroundColor = .green
        
        moveView.translatesAutoresizingMaskIntoConstraints = false
        animationButton.translatesAutoresizingMaskIntoConstraints = false
        
        animationButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 50).isActive = true
        animationButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 50).isActive = true
        animationButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 50).isActive = true
        animationButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50).isActive = true
        
        moveView.topAnchor.constraint(equalTo: animationButton.topAnchor, constant: 50).isActive = true
        moveView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 50).isActive = true
        moveView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 50).isActive = true
        moveView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50).isActive = true
        moveView.heightAnchor.constraint(equalToConstant: 150)
        
        
        
        view.addSubview(animationButton)
        view.addSubview(moveView)
        
    		
        
//        leftView.backgroundColor = .red
//        rightView.backgroundColor = .blue
//        leftView.frame.size.width = 187
        
//        foundationView(for: leftView, backgroundColor: .red)
        
        
//        view.addSubview(leftView)
//        view.addSubview(rightView)
        
        
//        rightView.translatesAutoresizingMaskIntoConstraints = false
//        leftView.translatesAutoresizingMaskIntoConstraints = false
  
        
//        leftView.topAnchor.constraint(equalTo: view.topAnchor, constant: 50).isActive = true
//        leftView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50).isActive = true
//        leftView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50).isActive = true
//        leftView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50).isActive = true
        
//        let margins = view.layoutMarginsGuide
        // layoutMarginsGuide는
        
//        NSLayoutConstraint.activate([
//            leftView.topAnchor.constraint(equalTo: margins.topAnchor, constant: 0),
//            leftView.trailingAnchor.constraint(equalTo: rightView.leadingAnchor, constant: -10),
//            leftView.bottomAnchor.constraint(equalTo: margins.bottomAnchor, constant: 0),
//            leftView.leadingAnchor.constraint(equalTo: margins.leadingAnchor, constant: 0),
//
//            leftView.widthAnchor.constraint(equalTo: rightView.widthAnchor, multiplier: 1),
//            leftView.topAnchor.constraint(equalTo: rightView.topAnchor, multiplier: 1),
            
//            rightView.topAnchor.constraint(equalTo: margins.topAnchor, constant: 0),
//            rightView.leadingAnchor.constraint(equalTo: leftView.trailingAnchor, constant: 10),
//            rightView.bottomAnchor.constraint(equalTo: margins.bottomAnchor, constant: 0),
//            rightView.trailingAnchor.constraint(equalTo: margins.trailingAnchor, constant: 0)
//        ])
//
//        activateLayout()
        

        
    }
    
//    func foundationView(for fdView: UIView, backgroundColor: UIColor) {
//        fdView.backgroundColor = backgroundColor
//
//        view.addSubview(fdView)
//    }
//
    
    @objc func moveItem(_ sender : Any) {
        print("buttonAction")
//        UIView.animate(withDuration: 2) {
//            self.testViewCenterYConstraint.isActive.toggle()
//            self.view.layoutIfNeeded()
//        }
    }

    
//    func activateLayout() {
//
//    }
    
    
}

