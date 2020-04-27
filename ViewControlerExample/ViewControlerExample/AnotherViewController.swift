//
//  AnotherViewController.swift
//  ViewControlerExample
//
//  Created by 요한 on 2020/04/27.
//  Copyright © 2020 요한. All rights reserved.
//

import UIKit

class AnotherViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        let button = UIButton(type: .system)
        button.setTitle("Button Back", for: .normal)
        button.titleLabel?.font = UIFont.preferredFont(forTextStyle: .title2)
        button.sizeToFit() // 버튼 폰트의 사이즈를 잡아주는 역할
        button.center = view.center
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        view.addSubview(button)
        
        let firstPageButton = UIButton(type: .system)
        firstPageButton.setTitle("Button First", for: .normal)
        firstPageButton.titleLabel?.font = UIFont.preferredFont(forTextStyle: .title2)
        firstPageButton.sizeToFit() // 버튼 폰트의 사이즈를 잡아주는 역할
        firstPageButton.frame = CGRect(x: 90, y: 500, width: 200, height: 50)
        firstPageButton.addTarget(self, action: #selector(didTapButtonBack), for: .touchUpInside)
        view.addSubview(firstPageButton)
    }

    @objc private func didTapButton( sender: UIButton) {
        /***************************************************
        presentingViewController - 나를 띄운 ViewController
        presentedViewController - 내가 띄운 ViewController
        ***************************************************/
        
        let anotherVC = ViewController()
        present(anotherVC, animated: false)
//        anotherVC.modalPresentationStyle = .fullScreen

        
        presentingViewController?.dismiss(animated: false)
    }
    
    @objc private func didTapButtonBack(_ sender: UIButton) {
        presentingViewController?.presentingViewController?.dismiss(animated: false)
    }
    
}
