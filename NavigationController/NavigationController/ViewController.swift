//
//  ViewController.swift
//  NavigationController
//
//  Created by 요한 on 2020/05/08.
//  Copyright © 2020 요한. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var barButtonItem = UIBarButtonItem(title: "Next", style: .plain, target: self, action: #selector(pushViewController(_:))) // ViewController의 인스턴스가 생성이 완료된 후에 self를 사용할 수 있기 때문에 lazy를 사용하여 인스턴스를 먼저 생성한 후에 작업한다 (self로 자기자신을 찾을 수 없기 때문에 지연생성한다)
    lazy var barButtonItem3 = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(pushViewController(_:)))

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "FirstVC" // nav title
        navigationItem.title = "FirstVC Ttitle" // 두가지 모두 네비게이션 타이틀을 나타내t주는데, 더 명확하게 작성하려면 이것을 사용
        
        // iOS 11 이상만 LargeTtile 가능
//        navigationController?.navigationBar.prefersLargeTitles = true // 보통 Navigation Controller자체에 설정함(SeenDelegate.swift)
//        navigationItem.largeTitleDisplayMode = .never // LargeTitle을 특정뷰에서 안보이게 사용
        
        let barButtonItem1 = UIBarButtonItem(title: "Next2", style: .plain, target: self, action: #selector(pushViewController))
        
        
        navigationItem.rightBarButtonItems = [barButtonItem, barButtonItem1, barButtonItem3]
    }

    @objc private func pushViewController(_ sender: Any) {
        let secondVC = SecondViewController()
        navigationController?.pushViewController(secondVC, animated: true)
    }
}

