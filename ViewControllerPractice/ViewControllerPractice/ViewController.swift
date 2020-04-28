//
//  ViewController.swift
//  ViewControllerPractice
//
//  Created by 요한 on 2020/04/27.
//  Copyright © 2020 요한. All rights reserved.
//

import UIKit

final class ViewController: UIViewController { // 상속받는 자식클래스에서 재정의 방지
    
    let counterLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        counterLabel.text = "0"
        counterLabel.font = .preferredFont(forTextStyle: .title2)
        counterLabel.frame = CGRect(x: 0, y: 150, width: 100, height: 40)
        counterLabel.center.x = view.center.x // counterLabel의 x축을 cneter로 정렬
        counterLabel.textAlignment = .center
        view.addSubview(counterLabel)
        
        let button = UIButton(type: .system)
        button.setTitle("Present", for: .normal)
        button.titleLabel?.font = .preferredFont(forTextStyle: .title3)
        button.sizeToFit()
        button.center = view.center
        button.addTarget(self, action: #selector(didTapButton(_:)), for: .touchUpInside)
        view.addSubview(button)
    }
    
    @objc private func didTapButton(_ sender: Any) {
        guard let count = Int(counterLabel.text ?? "") else { return }
        
        let bVC = BViewController()
        bVC.countLabel.text = String(count + 3)
        
        bVC.presentationController?.delegate = self
        present(bVC, animated: true)
    }
}

extension ViewController: UIAdaptivePresentationControllerDelegate {
    func presentationControllerDidDismiss(_ presentationController: UIPresentationController) {
        guard let bVC = presentationController.presentedViewController as? BViewController,
          let currentCount = Int(bVC.countLabel.text ?? "0")
          else { return }

        countLabel.text = String(currentCount + 1)
    }
}
