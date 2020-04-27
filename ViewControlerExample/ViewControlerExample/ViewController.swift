//
//  ViewController.swift
//  ViewControlerExample
//
//  Created by 요한 on 2020/04/27.
//  Copyright © 2020 요한. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // viewDidLoad는 메모리에 올라갈때 1회 호출
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("\n---------- [ viewDidLoad - vc ] ----------\n")
        view.backgroundColor = .white

        let button = UIButton(type: .system)
        button.setTitle("Button !", for: .normal)
        button.titleLabel?.font = UIFont.preferredFont(forTextStyle: .title2)
        button.sizeToFit()
        button.center = view.center
        button.addTarget(self, action: #selector(didTapButton(_:)), for: .touchUpInside)
        view.addSubview(button)
    }
//
//    override func viewWillAppear( _ animated: Bool) {
//      super.viewWillAppear(animated)
//      print("\n---------- [ viewWillAppear - vc 1] ----------\n")
//    }
//
//    override func viewDidAppear( _ animated: Bool) {
//      super.viewDidAppear(animated)
//      print("\n---------- [ viewDidAppear - vc 2] ----------\n")
//    }
//
//    override func viewWillDisappear( _ animated: Bool) {
//      super.viewWillDisappear(animated)
//      print("\n---------- [ viewWillDisappear - vc 3] ----------\n")
//    }
//
//    override func viewDidDisappear( _ animated: Bool) {
//      super.viewDidDisappear(animated)
//      print("\n---------- [ viewDidDisappear - vc 4] ----------\n")
//    }
    


    @objc private func didTapButton(_ sender: UIButton) {
        let VC = NextViewController() // dismiss 하게되면 메모리에도 삭제, 다시 생성할때 다시만듦
//        VC.modalPresentationStyle = .fullScreen
        
        present(VC, animated: false)
    }
}
