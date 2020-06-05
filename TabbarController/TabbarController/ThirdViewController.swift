//
//  ThirdViewController.swift
//  TabbarController
//
//  Created by 요한 on 2020/05/08.
//  Copyright © 2020 요한. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() { 
        super.viewDidLoad()

        navigationItem.title = "Third View Controller"
        
        let barButtonItem1 = UIBarButtonItem(title: "Next2", style: .plain, target: self, action: #selector(pushViewController))
        
        view.backgroundColor = .yellow
        
        navigationItem.rightBarButtonItems = [barButtonItem1]
    }
    
    @objc private func pushViewController(_ sender: Any) {
        let fourthVC = FourthViewController()
        navigationController?.pushViewController(fourthVC, animated: true)
    }
}
