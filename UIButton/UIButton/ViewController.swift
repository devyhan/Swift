//
//  ViewController.swift
//  UIButton
//
//  Created by 요한 on 2020/04/23.
//  Copyright © 2020 요한. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myButton = UIButton(type: .system)
        
        myButton.frame = CGRect(x: 100, y: 100, width: 200, height: 50)
        myButton.setTitle("First iPone Button", for: .normal)
        myButton.setTitle("Button highlighted", for: .highlighted) // .nomal, 눌렀을때, 뗏을때 마다의 상태를 지정할 수 있다.
        view.addSubview(myButton)
        
//        myButton.addTarget(self, action: #selector(buttonDidTap(_:)), for: .touchUpInside)
    }

   @objc func buttonDidTap(_sender: Any) {
        print("Push Button")
    }
    
//    @IBAction func buttonDidTap(_ sender: Any) {
//        print("버튼을 눌렀습니다.")
//    }
//
//    @IBAction func didTabButton(_ sender: UIButton) {
//        print("")
//        print(sender)
//    }
    
}

