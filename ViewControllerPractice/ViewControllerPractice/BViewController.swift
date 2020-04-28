//
//  BViewController.swift
//  ViewControllerPractice
//
//  Created by 요한 on 2020/04/27.
//  Copyright © 2020 요한. All rights reserved.
//

import UIKit

final class BViewController: UIViewController {
    
    let countLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        countLabel.text = "0"
        countLabel.frame = CGRect(x: 0, y: 150, width: 100, height: 40)
        countLabel.center.x = view.center.x // counterLabel의 x축을 cneter로 정렬
        countLabel.textAlignment = .center
        view.addSubview(countLabel)
        
        let button = UIButton(type: .system)
        button.setTitle("Dismiss", for: .normal)
        button.titleLabel?.font = .preferredFont(forTextStyle: .title3)
        button.sizeToFit()
        button.center = view.center
        button.addTarget(self, action: #selector(didTapButton(_:)), for: .touchUpInside)
        view.addSubview(button)
    }
    
    @objc private func didTapButton(_ sender: Any) {
        guard let presentingVC = presentingViewController as? ViewController, let count = Int(countLabel.text ?? "") else { return }
        
        presentingVC.countLabel.text = String(count + 1)
        presentingVC.dismiss(animated: true)
    }
}
